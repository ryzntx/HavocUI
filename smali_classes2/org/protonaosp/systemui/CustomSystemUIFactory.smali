.class public final Lorg/protonaosp/systemui/CustomSystemUIFactory;
.super Lcom/android/systemui/SystemUIFactory;
.source "CustomSystemUIFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/systemui/SystemUIFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createBackGestureTfClassifierProvider(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/BackGestureTfClassifierProvider;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/protonaosp/systemui/CustomSystemUIFactory;->createBackGestureTfClassifierProvider(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider;

    move-result-object p0

    return-object p0
.end method

.method public createBackGestureTfClassifierProvider(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider;
    .locals 0
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "am"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "modelName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance p0, Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider;

    invoke-direct {p0, p1, p2}, Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object p0
.end method
