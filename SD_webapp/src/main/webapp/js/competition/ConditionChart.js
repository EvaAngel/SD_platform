function webConditionAjax(qClassification) {
    $.ajax({
        url: '../../servlet/admin/PercentageOfSuccess',//地址
        type: 'post',
        data: {"qClassification": qClassification},
        async:false,
        success: function (data) {
            console.log(data);
            // 基于准备好的dom，初始化echarts实例
            var myChart1 = echarts.init(document.getElementById('chart1'));
            var myChart2 = echarts.init(document.getElementById('chart2'));
            var myChart3 = echarts.init(document.getElementById('chart3'));
            var myChart4 = echarts.init(document.getElementById('chart4'));
            var myChart5 = echarts.init(document.getElementById('chart5'));
// 指定图表的配置项和数据
            var web1 = {
                backgroundColor: '#FFBD9D',

                title: {
                    text: data.classification+'-1',
                    left: 'center',
                    top: 10,
                    textStyle: {
                        color: '#2c343c'
                    }
                },


                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data:['未解决','已解决']
                },
                series: [
                    {
                        name:'解题情况',
                        type:'pie',
                        radius: ['45%', '70%'],
                        avoidLabelOverlap: true,
                        label: {
                            normal: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                show: true,
                                textStyle: {
                                    fontSize: '20',
                                    fontWeight: 'bold'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                show: false
                            }
                        },

                        data:[
                            {value:data.q1_notok, name:'未解决'},
                            {value:data.q1_ok, name:'已解决'}
                        ]
                    }
                ]
            };






            var web2 = {
                backgroundColor: '#FFBD9D',

                title: {
                    text: data.classification+'-2',
                    left: 'center',
                    top: 10,
                    textStyle: {
                        color: '#2c343c'
                    }
                },


                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data:['未解决','已解决']
                },
                series: [
                    {
                        name:'解题情况',
                        type:'pie',
                        radius: ['45%', '70%'],
                        avoidLabelOverlap: true,
                        label: {
                            normal: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                show: true,
                                textStyle: {
                                    fontSize: '20',
                                    fontWeight: 'bold'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                show: false
                            }
                        },

                        data:[
                            {value:data.q2_notok, name:'未解决'},
                            {value:data.q2_ok, name:'已解决'}
                        ]
                    }
                ]
            };




            var web3 = {
                backgroundColor: '#FFBD9D',

                title: {
                    text: data.classification+'-3',
                    left: 'center',
                    top: 10,
                    textStyle: {
                        color: '#2c343c'
                    }
                },


                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data:['未解决','已解决']
                },
                series: [
                    {
                        name:'解题情况',
                        type:'pie',
                        radius: ['45%', '70%'],
                        avoidLabelOverlap: true,
                        label: {
                            normal: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                show: true,
                                textStyle: {
                                    fontSize: '20',
                                    fontWeight: 'bold'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                show: false
                            }
                        },

                        data:[
                            {value:data.q3_notok, name:'未解决'},
                            {value:data.q3_ok, name:'已解决'}
                        ]
                    }
                ]
            };


            var web4 = {
                backgroundColor: '#FFBD9D',

                title: {
                    text: data.classification+'-4',
                    left: 'center',
                    top: 10,
                    textStyle: {
                        color: '#2c343c'
                    }
                },


                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data:['未解决','已解决']
                },
                series: [
                    {
                        name:'解题情况',
                        type:'pie',
                        radius: ['45%', '70%'],
                        avoidLabelOverlap: true,
                        label: {
                            normal: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                show: true,
                                textStyle: {
                                    fontSize: '20',
                                    fontWeight: 'bold'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                show: false
                            }
                        },

                        data:[
                            {value:data.q4_notok, name:'未解决'},
                            {value:data.q4_ok, name:'已解决'}
                        ]
                    }
                ]
            };


            var web5 = {
                backgroundColor: '#FFBD9D',

                title: {
                    text: data.classification+'-5',
                    left: 'center',
                    top: 10,
                    textStyle: {
                        color: '#2c343c'
                    }
                },


                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data:['未解决','已解决']
                },
                series: [
                    {
                        name:'解题情况',
                        type:'pie',
                        radius: ['45%', '70%'],
                        avoidLabelOverlap: true,
                        label: {
                            normal: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                show: true,
                                textStyle: {
                                    fontSize: '20',
                                    fontWeight: 'bold'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                show: false
                            }
                        },

                        data:[
                            {value:data.q5_notok, name:'未解决'},
                            {value:data.q5_ok, name:'已解决'}
                        ]
                    }
                ]
            };
// 使用刚指定的配置项和数据显示图表。
            myChart1.setOption(web1);
            myChart2.setOption(web2);
            myChart3.setOption(web3);
            myChart4.setOption(web4);
            myChart5.setOption(web5);

        }
    })
}



