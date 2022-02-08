.class Lcom/android/systemui/qs/tiles/LocaleTile$1;
.super Ljava/lang/Object;
.source "LocaleTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocaleTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocaleTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocaleTile;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocaleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocaleTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocaleTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocaleTile;->access$100(Lcom/android/systemui/qs/tiles/LocaleTile;)Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocaleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocaleTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocaleTile;->access$000(Lcom/android/systemui/qs/tiles/LocaleTile;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocaleTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocaleTile;->access$200(Lcom/android/systemui/qs/tiles/LocaleTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocaleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocaleTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocaleTile;->access$100(Lcom/android/systemui/qs/tiles/LocaleTile;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocaleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocaleTile;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/LocaleTile;->access$002(Lcom/android/systemui/qs/tiles/LocaleTile;Ljava/util/Locale;)Ljava/util/Locale;

    return-void
.end method
