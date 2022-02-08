.class Lcom/android/systemui/qs/QuickStatusBarHeader$1;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private update()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget v1, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 215
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setIgnoredSlots(Ljava/util/List;)V

    .line 216
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->getPrivacyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V

    return-void
.end method


# virtual methods
.method public onFlagAllChanged(Z)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$202(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)Z

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->update()V

    :cond_0
    return-void
.end method

.method public onFlagMicCameraChanged(Z)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$302(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)Z

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->update()V

    :cond_0
    return-void
.end method

.method public onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/privacy/OngoingPrivacyChip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    .line 194
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V

    return-void
.end method
