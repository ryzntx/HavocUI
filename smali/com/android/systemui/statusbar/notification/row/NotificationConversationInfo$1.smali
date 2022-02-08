.class Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1;
.super Ljava/lang/Object;
.source "NotificationConversationInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    .line 314
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$000(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 315
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    .line 320
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->force_stop_dlg_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->access$400(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->force_stop_dlg_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    .line 323
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p0, 0x1040000

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 334
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
