.class Lcom/android/systemui/statusbar/policy/TaskHelper$3;
.super Ljava/lang/Object;
.source "TaskHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/TaskHelper;->updateForegroundApp()V
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

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$500(Lcom/android/systemui/statusbar/policy/TaskHelper;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->isLauncherShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$600(Lcom/android/systemui/statusbar/policy/TaskHelper;)Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$502(Lcom/android/systemui/statusbar/policy/TaskHelper;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$500(Lcom/android/systemui/statusbar/policy/TaskHelper;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$500(Lcom/android/systemui/statusbar/policy/TaskHelper;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$702(Lcom/android/systemui/statusbar/policy/TaskHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v1, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v1, v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    aget v1, v3, v1

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$802(Lcom/android/systemui/statusbar/policy/TaskHelper;I)I

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/TaskHelper;->isLauncherShowing()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$3;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$200(Lcom/android/systemui/statusbar/policy/TaskHelper;)Lcom/android/systemui/statusbar/policy/TaskHelper$TaskHelperHandler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
