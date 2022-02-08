.class Lcom/android/systemui/statusbar/policy/TaskHelper$2;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "TaskHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/TaskHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/TaskHelper;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$2;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$2;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$200(Lcom/android/systemui/statusbar/policy/TaskHelper;)Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
