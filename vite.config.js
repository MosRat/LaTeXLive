import { defineConfig } from 'vite';

export default defineConfig({
  root: 'html', // 指定入口目录
  server: {
    port: 3000, // 你可以根据需要更改端口
  },
  build: {
    outDir: '../dist', // 输出目录相对于项目根目录
    rollupOptions: {
      input: {
        main: 'html/index.html', // 指定入口文件
      },
    },
  },
  publicDir: '../public'
});
