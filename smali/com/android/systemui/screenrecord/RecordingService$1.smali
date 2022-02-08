.class Lcom/android/systemui/screenrecord/RecordingService$1;
.super Ljava/lang/Object;
.source "RecordingService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenrecord/RecordingService;->showDot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenrecord/RecordingService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenrecord/RecordingService;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$1;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 489
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$1;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->access$100(Lcom/android/systemui/screenrecord/RecordingService;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
