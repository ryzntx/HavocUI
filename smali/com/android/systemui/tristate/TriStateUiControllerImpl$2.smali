.class Lcom/android/systemui/tristate/TriStateUiControllerImpl$2;
.super Landroid/view/OrientationEventListener;
.source "TriStateUiControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tristate/TriStateUiControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tristate/TriStateUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/tristate/TriStateUiControllerImpl;Landroid/content/Context;I)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$2;->this$0:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$2;->this$0:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->access$500(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V

    return-void
.end method
