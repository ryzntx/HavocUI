.class public final synthetic Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$MD-AjVQiBPCLTrJlfeNx1zannNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

.field public final synthetic f$1:Landroid/view/InsetsState;

.field public final synthetic f$2:[Landroid/view/InsetsSourceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$MD-AjVQiBPCLTrJlfeNx1zannNI;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$MD-AjVQiBPCLTrJlfeNx1zannNI;->f$1:Landroid/view/InsetsState;

    iput-object p3, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$MD-AjVQiBPCLTrJlfeNx1zannNI;->f$2:[Landroid/view/InsetsSourceControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$MD-AjVQiBPCLTrJlfeNx1zannNI;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$MD-AjVQiBPCLTrJlfeNx1zannNI;->f$1:Landroid/view/InsetsState;

    iget-object p0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$MD-AjVQiBPCLTrJlfeNx1zannNI;->f$2:[Landroid/view/InsetsSourceControl;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->lambda$insetsControlChanged$2$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    return-void
.end method
