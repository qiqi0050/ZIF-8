#!/usr/bin/python
# -*- coding: utf-8 -*-
import matplotlib
matplotlib.use('pdf')
import pylab
pylab.mpl.rcParams['font.sans-serif'] = ['SimHei']
pylab.mpl.rcParams['axes.unicode_minus'] = False
import matplotlib.pyplot as plt
from numpy import *
from scipy.interpolate import spline

def loadData(filePath):
    with open(filePath) as f:
        tmpVect = f.readlines()
    dataVect = [i.split() for i in tmpVect if not tmpVect.index(i) == 0]
    labelList = [i.split() for i in tmpVect if tmpVect.index(i) == 0]
    return dataVect, labelList

def main():
    import os
    dataVectList = []
    for origin in os.listdir("src/origin/"):
        if os.path.exists("src/origin/" + origin + "/hakee.ori"):
            dataVect, labelList = loadData("src/origin/" + origin + "/hakee.ori")
            plotHakee(dataVect, labelList)
        if os.path.exists("src/origin/" + origin + "/tg.ori"):
            loadData("src/origin/" + origin + "/tg.ori")

def plotHakee(dataVect, labelList):
    plotColors = ['r', 'b', 'g', 'k', 'm', 'y']

    plt.xlabel(u"时间/min")
    plt.ylabel(u"转矩/Nm")
    for i in range(len(labelList)):
        plt.plot([row[2*i] for row in dataVect], [row[2*i+1] for row in dataVect], linewidth = 1.0, label=labelList[i])
    plt.legend()
    plt.savefig('test01.eps', format='eps', dpi=600)

def plotMain():
    plotColors = ['r', 'b', 'g', 'k', 'm', 'y']
    labelList = [u'PEW-0380+汉高G-60', u'A蜡+OA2蜡', u'A蜡+E蜡', u'OP蜡+OA2蜡', u'OP蜡+E蜡']
    fileList = ['1', '2', '3', '4', '5']
    dataVectList = loadData(fileList)
    plt.title(u'动态热稳定性测试')
    plt.xlabel('Time(min)')
    plt.ylabel('Torque')
    for i in range(len(dataVectList)):
        plt.plot(dataVectList[i][0], dataVectList[i][1], plotColors[i], linewidth = 2.0, label=labelList[i])
    plt.legend()
    plt.savefig('test01.eps', format='eps', dpi=600)

if __name__ == '__main__':
    main()
