.class Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;
.super Lcom/android/systemui/screenrecord/IRemoteRecording$Stub;
.source "RecordingService.java"

# interfaces
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenrecord/RecordingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingServiceBinder"
.end annotation


# instance fields
.field private mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/screenrecord/IRecordingCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/screenrecord/RecordingService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/screenrecord/RecordingService;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {p0}, Lcom/android/systemui/screenrecord/IRemoteRecording$Stub;-><init>()V

    .line 571
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->mCallbackList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/screenrecord/RecordingService;Lcom/android/systemui/screenrecord/RecordingService$1;)V
    .locals 0

    .line 569
    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;-><init>(Lcom/android/systemui/screenrecord/RecordingService;)V

    return-void
.end method


# virtual methods
.method public addRecordingCallback(Lcom/android/systemui/screenrecord/IRecordingCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isRecording()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->access$600(Lcom/android/systemui/screenrecord/RecordingService;)Lcom/android/systemui/screenrecord/RecordingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result p0

    return p0
.end method

.method public isStarting()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->access$600(Lcom/android/systemui/screenrecord/RecordingService;)Lcom/android/systemui/screenrecord/RecordingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingController;->isStarting()Z

    move-result p0

    return p0
.end method

.method public onRecordingEnd()V
    .locals 1

    .line 616
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenrecord/IRecordingCallback;

    .line 618
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/screenrecord/IRecordingCallback;->onRecordingEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecordingStart()V
    .locals 1

    .line 605
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenrecord/IRecordingCallback;

    .line 607
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/screenrecord/IRecordingCallback;->onRecordingStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeRecordingCallback(Lcom/android/systemui/screenrecord/IRecordingCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startRecording(IZZZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenrecord/RecordingService;->doStartRecording(IZZZZ)V

    return-void
.end method

.method public stopRecording()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
