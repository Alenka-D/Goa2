// Импорты зависимостей и утилит
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screen_authorization0_model.dart';
export 'screen_authorization0_model.dart';

// Основной экран авторизации
class ScreenAuthorization0Widget extends StatefulWidget {
  const ScreenAuthorization0Widget({super.key});

  @override
  State<ScreenAuthorization0Widget> createState() =>
      _ScreenAuthorization0WidgetState();
}

class _ScreenAuthorization0WidgetState
    extends State<ScreenAuthorization0Widget> {
  // Модель состояния для этого экрана
  late ScreenAuthorization0Model _model;

  // Ключ для Scaffold, чтобы управлять контекстом экрана
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // Инициализация модели
    _model = createModel(context, () => ScreenAuthorization0Model());
  }

  @override
  void dispose() {
    // Очистка модели при удалении экрана
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Убираем фокус с поля ввода при тапе вне его
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              // Фоновый градиент
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).alternate,
                  FlutterFlowTheme.of(context).secondary
                ],
                stops: [0.0, 0.7],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Верхняя часть с кнопкой "Назад" и заголовком
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    children: [
                      // Кнопка "Назад"
                      Row(
                        children: [
                          InkWell(
                            onTap: () async {
                              context.safePop();
                            },
                            child: Container(
                              width: 45.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFBFFFD6),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/Arrow_-_Left.png',
                                  width: 25.0,
                                  height: 25.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Заголовок
                      Padding(
                        padding: EdgeInsets.only(top: 14.0),
                        child: Center(
                          child: Text(
                            'Let’s Get Started',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: Color(0xFF00822F),
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Блок с кнопками входа через соцсети
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(top: 150.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: [
                        // Кнопка Facebook
                        _buildSocialButton(
                          imagePath: 'assets/images/Facebook.png',
                          text: 'Facebook',
                          color: Color(0xFF4267B2),
                          onTap: () {
                            // Пока не реализовано
                          },
                        ),

                        // Кнопка Twitter
                        _buildSocialButton(
                          imagePath: 'assets/images/Twitter.png',
                          text: 'Twitter',
                          color: Color(0xFF1DA1F2),
                          onTap: () async {
                            context.pushNamed(
                              'screen_9_Home_0',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 500),
                                ),
                              },
                            );
                          },
                        ),

                        // Кнопка Google
                        _buildSocialButton(
                          imagePath: 'assets/images/Vector.png',
                          text: 'Google',
                          color: Color(0xFFEA4335),
                          onTap: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            final user = await authManager.signInWithGoogle(context);
                            if (user == null) return;
                            context.goNamedAuth('screen_9_Home_0', context.mounted);
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                // Нижняя часть с переходом на регистрацию или вход
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      height: 100.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Уже есть аккаунт
                          Padding(
                            padding: EdgeInsets.only(bottom: 24.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an account?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: Color(0xFF00BA44),
                                        fontSize: 15.0,
                                      ),
                                ),
                                SizedBox(width: 6.0),
                                InkWell(
                                  onTap: () {
                                    context.pushNamed(
                                      'screen_sign_in_0',
                                      extra: {
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 500),
                                        ),
                                      },
                                    );
                                  },
                                  child: Text(
                                    'Signin',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          color: Color(0xFF1D1E20),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Кнопка "Создать аккаунт"
                          InkWell(
                            onTap: () {
                              context.pushNamed(
                                'screen_sign_in_0',
                                extra: {
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              height: 75.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                              child: Center(
                                child: Text(
                                  'Create an Account',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: Color(0xFFFEFEFE),
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Виджет для кнопок социальных сетей
  Widget _buildSocialButton({
    required String imagePath,
    required String text,
    required Color color,
    required void Function() onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: 22.0, height: 22.0, fit: BoxFit.cover),
              SizedBox(width: 10.0),
              Text(
                text,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter Tight',
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
