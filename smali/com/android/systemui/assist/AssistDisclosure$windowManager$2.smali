.class final Lcom/android/systemui/assist/AssistDisclosure$windowManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AssistDisclosure.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/WindowManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistDisclosure;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$windowManager$2;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/WindowManager;
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure$windowManager$2;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistDisclosure;->access$getContext$p(Lcom/android/systemui/assist/AssistDisclosure;)Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$windowManager$2;->invoke()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method
