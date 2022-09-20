<template>
  <div class="dashboard-editor-container">
    <el-row :gutter="32">
      <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <ve-polar-chart :data="chartData1" :settings="settings1"/>
        </div>
      </el-col>
      <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <ve-line-chart :data="chartData2" :settings="settings2" />
        </div>
      </el-col>
      <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <ve-line-chart :data="chartData3" :series-option="seriesOption" />
        </div>
      </el-col>
    </el-row>

  </div>
</template>

<script>

module.exports = {
  data(){
    return{
      chartData1:'',
      settings1:'',
      chartData2:'',
      settings2:'',
      chartData3:'',
      seriesOption:''

    }
  },
  created() {
    this.chartData1 = {
      dimensions: {
        name: 'product',
        data: ['拿铁', '摩卡', '意式', '美式']
      },
      measures: [
        {
          name: '2017',
          data: [43.2, 23.9, 87.7, 77.2]
        },
        {
          name: '2018',
          data: [33.9, 76.8, 65.1, 20.8]
        },
        {
          name: '2019',
          data: [90.7, 78.6, 28.7, 53.9]
        }
      ]
    }
    this.settings1 = {
      polarType: 'bar'
    }
    this.chartData2 = {
      dimensions: {
        name: 'Week',
        data: ['Mon.', 'Tue.', 'Wed.', 'Thu.', 'Fir.', 'Sat.', 'Sun.']
      },
      measures: [{
        name: 'Vue',
        data: [3000, 3500, 3900, 3100, 3200, 3100, 3600, 3300, 3600, 3400, 3100, 3000]
      },
        {
          name: 'React',
          data: [2000, 2000, 2600, 2300, 2300, 2000, 2600, 2200, 2500, 2800, 2500, 2200]
        },
        {
          name: 'Angular',
          data: [827, 949, 1400, 1000, 884, 911, 983, 989, 925, 1100, 1200, 930]
        }]
    }
    this.settings2 = {
      areaStyle: {}
    }

    this.chartData3 = {
      dimensions: {
        name: 'Month',
        data: ['Jan.', 'Feb.', 'Mar.', 'Apr.', 'May.', 'Jun.', 'Jul.', 'Aug.', 'Sep.', 'Oct.', 'Nov.', 'Dec.']
      },
      measures: [
        {
          name: 'Vue',
          data: ['3000.12', 3500.33, 3900.23, 3100, 3200, 3100, 3600, 3300, 3600, 3400, 3100, 3000]
        },
        {
          name: 'React',
          data: ['2000.34', '2000.23', 2600.87, 2300, 2300, 2000, 2600, 2200, 2500, 2800, 2500, 2200]
        },
        {
          name: 'Angular',
          data: ['827.56', 949.39, 1400.78, 1000, 884, 911, 983, 989, 925, 1100, 1200, 930]
        }
      ]
    }
    this.seriesOption = {
      'Vue': {
        itemStyle: { color: 'green' },
        showSymbol: false,
        lineStyle: { type: 'dotted' }
      },
      'Angular': { type: 'bar' }
    }



  }
}
</script>

<style scoped>
.dashboard-editor-container {
  padding: 32px;
  background-color: rgb(240, 242, 245);
  position: relative;

.chart-wrapper {
  background: #fff;
  padding: 16px 16px 0;
  margin-bottom: 32px;
}
}

@media (max-width:1024px) {
  .chart-wrapper {
    padding: 8px;
  }
}


</style>
