import 'package:app/controllers/home_controller.dart';
import 'package:app/languages/language_dart.g.dart';
import 'package:app/widgets/widget_dart.g.dart';
import 'package:finch/finch_app.dart';
import 'package:finch/finch_model.dart';

FinchConfigs configs = FinchConfigs(
  port: 80,
  languagePath: './lib/languages',
  languageSource: LanguageSource.dart,
  dartLanguages: languageDart,
  widgetsPath: './lib/widgets',
  widgetsType: 'j2.html',
  jinjaMapTemplate: mapTemplates,
  enableLocalDebugger: true,
);

final app = FinchApp(configs: configs);

void main([List<String>? args]) async {
  app.get(
    path: '/',
    index: (rq) => HomeController().index(),
  );

  app.start(args, true);
}
