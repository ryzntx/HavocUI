.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startNotificationGutsIntent$6$StatusBarNotificationActivityStarter(Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    return-void
.end method
