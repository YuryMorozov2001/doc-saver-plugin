# document saver
DocSaver - это плагин, который позволяет пользователям получать доступ к файловой системе устройства и сохранять файлы.

## Установка
Добавьте в ваш pubspec.yaml плагин:
```yaml
 doc_saver: 
    git:
      url: https://github.com/YuryMorozov2001/doc-saver-plugin.git

```
## Использование
### Получение пути к папке Download
Чтобы получить путь к папке `Download`, вы можете использовать следующий метод:

```dart
final docSaver = DocSaver();
final downloadPath = await docSaver.getDownloadPath();
// ИЛИ
String downloadPath = await DocSaver().getDownloadPath();
```
Это асинхронно вернет текущий установленный путь по умолчанию к папке Download. Затем вы можете использовать этот путь для выполнения других операций, таких как чтение или запись файлов.

### TODO: 
- [X] Получение пути к папке Download (android) 
- [ ] Получение пути к папке Download (ios) 
- [ ] Установка пользовательского пути для сохранения файла (android) 
- [ ] Установка пользовательского пути для сохранения файла (ios)
 