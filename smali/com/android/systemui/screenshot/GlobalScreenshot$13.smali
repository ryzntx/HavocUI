.class Lcom/android/systemui/screenshot/GlobalScreenshot$13;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .line 1322
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Ljava/lang/String;)V
    .locals 0

    .line 1330
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1510(Lcom/android/systemui/screenshot/GlobalScreenshot;)I

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1325
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$13;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1508(Lcom/android/systemui/screenshot/GlobalScreenshot;)I

    return-void
.end method
