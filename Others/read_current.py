#Import of Library
import serial #Serial communication
import time #Time calculation
import sys
import numpy as np
from paho.mqtt import client as mqtt_client
import random
import time

port ="/dev/ttyS0"
baudrate = 115200 #Communication speed

ser = serial.Serial(port, baudrate)

a0=[]
a1=[]
a2=[]
a3=[]

received_data =ser.readline()
while True:
	# SETUP MQTT funciton
	broker = "" # IP address of Broker
	port =  # Set a MQTT port
	topic = "" # Set a MAQTT topic

	# generate client ID with pub prefix randomly
	client_id = f"mqtt-{random.randint(0, 100)}"
	username = ""
	password = ""

	#-------------------------------------------
	#Read current via RP2040
	#-------------------------------------------
	start = time.time() #Getting start time
	a0=[]
	a1=[]
	a2=[]
	a3=[]
	for i in range(500): #Data acquisition of 500 samples
		received_data = ser.readline()

		data = (received_data.decode().replace("\n","")).split(",",3)

		a0.append(int(data[0]))
		a1.append(int(data[1]))
		a2.append(int(data[2]))
		a3.append(int(data[3]))

	end=time.time() #Getting the end time
	print("Time:")
	print(end - start) #Calculation of processing time

	#-------------------------------------------
	#FFT processing for acquired waveforms + MQTT publish
	#-------------------------------------------
	N = len(a0)
	i = a0

	dt = (end - start)/500
	freq = np.fft.fftfreq(N, d=dt)
	fi = np.fft.fft(i)
	ampi = np.abs(fi/(2*N/2))

	ampi[0] = 0
	max_frq = freq[np.argmax(ampi)]
	max_amp = ampi[np.argmax(ampi)]
	print("Send: "+"Freq:"+str(max_frq)+",Amp:"+str(max_amp)+" ;-)")

	#Connect to MQTT Broker
	def connect_mqtt():
		client = mqtt_client.Client(client_id)
		client.on_connect = on_connect
		client.connect(broker, port)
		return client

	#Message when connected to the server
	def on_connect(client, userdata, flags, rc):
		if rc == 0:
			print("Connected to Broker.")
		else:
			print("Failed to connect. return code %d\n", rc)

	client = connect_mqtt()
	client.loop_start()
	msg_data = ("Freq:"+str(max_frq)+",Amp:"+str(max_amp)+" ;-)")
	message = f"message: {msg_data}"
	result = client.publish(topic, message)
	print(result)
ser.close()

