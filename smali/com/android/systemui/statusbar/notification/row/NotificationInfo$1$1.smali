.class Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1$1;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1$1;->this$1:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 344
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1$1;->this$1:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    .line 345
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->access$400(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 347
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1$1;->this$1:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->access$500(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method
