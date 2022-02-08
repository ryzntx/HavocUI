.class public final Lcom/android/systemui/assist/AssistDisclosure;
.super Ljava/lang/Object;
.source "AssistDisclosure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssistDisclosure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssistDisclosure.kt\ncom/android/systemui/assist/AssistDisclosure\n+ 2 AssistDisclosureView.kt\ncom/android/systemui/assist/AssistDisclosureView\n*L\n1#1,73:1\n141#2,4:74\n*E\n*S KotlinDebug\n*F\n+ 1 AssistDisclosure.kt\ncom/android/systemui/assist/AssistDisclosure\n*L\n44#1,4:74\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final context:Landroid/content/Context;

.field private final windowManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/systemui/assist/AssistDisclosure;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "windowManager"

    const-string v4, "getWindowManager()Landroid/view/WindowManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/assist/AssistDisclosure;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure;->context:Landroid/content/Context;

    .line 33
    new-instance p1, Lcom/android/systemui/assist/AssistDisclosure$windowManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/assist/AssistDisclosure$windowManager$2;-><init>(Lcom/android/systemui/assist/AssistDisclosure;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure;->windowManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/assist/AssistDisclosure;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure;->context:Landroid/content/Context;

    return-object p0
.end method
