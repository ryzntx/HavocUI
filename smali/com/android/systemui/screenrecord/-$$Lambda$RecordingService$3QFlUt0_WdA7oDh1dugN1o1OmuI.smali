.class public final synthetic Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$3QFlUt0_WdA7oDh1dugN1o1OmuI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/RecordingService;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$3QFlUt0_WdA7oDh1dugN1o1OmuI;->f$0:Lcom/android/systemui/screenrecord/RecordingService;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$3QFlUt0_WdA7oDh1dugN1o1OmuI;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$3QFlUt0_WdA7oDh1dugN1o1OmuI;->f$0:Lcom/android/systemui/screenrecord/RecordingService;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$3QFlUt0_WdA7oDh1dugN1o1OmuI;->f$1:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingService;->lambda$saveRecording$1$RecordingService(Landroid/os/UserHandle;)V

    return-void
.end method
