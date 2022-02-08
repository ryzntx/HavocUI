.class Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;
.super Landroid/database/ContentObserver;
.source "CustomSettingsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/custom/CustomSettingsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/custom/CustomSettingsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/custom/CustomSettingsServiceImpl;)V
    .locals 1

    .line 201
    iput-object p1, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;->this$0:Lcom/android/systemui/custom/CustomSettingsServiceImpl;

    .line 202
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 208
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-ne p4, p1, :cond_0

    .line 209
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 210
    iget-object p3, p0, Lcom/android/systemui/custom/CustomSettingsServiceImpl$Observer;->this$0:Lcom/android/systemui/custom/CustomSettingsServiceImpl;

    invoke-static {p3, p2}, Lcom/android/systemui/custom/CustomSettingsServiceImpl;->access$200(Lcom/android/systemui/custom/CustomSettingsServiceImpl;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    return-void
.end method
