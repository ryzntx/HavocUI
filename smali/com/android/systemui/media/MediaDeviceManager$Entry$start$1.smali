.class final Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager$Entry;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getLocalMediaManager()Lcom/android/settingslib/media/LocalMediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getLocalMediaManager()Lcom/android/settingslib/media/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getController()Landroid/media/session/MediaController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->access$setPlaybackType$p(Lcom/android/systemui/media/MediaDeviceManager$Entry;I)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-static {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->access$updateCurrent(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    .line 149
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->access$setStarted$p(Lcom/android/systemui/media/MediaDeviceManager$Entry;Z)V

    return-void
.end method
