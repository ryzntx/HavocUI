.class Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 331
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    .line 332
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->access$000(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 333
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->force_stop_dlg_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->force_stop_dlg_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 340
    sget v0, Lcom/android/systemui/R$string;->dlg_ok:I

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 350
    sget p0, Lcom/android/systemui/R$string;->dlg_cancel:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 351
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
