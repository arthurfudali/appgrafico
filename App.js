import React, { useEffect, useState } from 'react';
import { View, Text } from 'react-native';
import { BarChart } from 'react-native-chart-kit';
import api from './services/api';

const App = () => {
  const [chartData, setChartData] = useState([]);

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const response = await api.get(`pam3etim/atividadegrafico/listar.php`);
      setChartData(response.data.resultado);
    } catch (error) {
      console.error('Erro ao obter os dados:', error);
    }
  };
  

  const labels = chartData.map(item => item.quantidade);
  const data = chartData.map(item => item.valores);

  const chartConfig = {
    backgroundGradientFrom: '#030a54',
    backgroundGradientTo: '#5e69e6',
    decimalPlaces: 1,
    barPercentage: 0.5,
    color: (opacity = 1) => `rgba(2, 200, 190, ${opacity})`,
    style: {
      borderRadius: 16,         
    },
  };

  return (
    <View>
      {chartData.length === 0 ? (
        <Text>Carregando...</Text>
      ) : (
        <BarChart
          style={{top:60}}          
          data={{
            labels,
            datasets: [
              {
                data,
              },
            ],
          }}
          width={400}
          height={320}
          chartConfig={chartConfig}
          verticalLabelRotation={10}        
          
        />
      )}
    </View>
  );
};

export default App; 