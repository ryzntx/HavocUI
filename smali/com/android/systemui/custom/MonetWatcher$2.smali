.class final Lcom/android/systemui/custom/MonetWatcher$2;
.super Ljava/lang/Object;
.source "MonetWatcher.kt"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/custom/MonetWatcher;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/custom/MonetWatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/custom/MonetWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/custom/MonetWatcher$2;->this$0:Lcom/android/systemui/custom/MonetWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/custom/MonetWatcher$2;->this$0:Lcom/android/systemui/custom/MonetWatcher;

    invoke-static {p0}, Lcom/android/systemui/custom/MonetWatcher;->access$updateKeyguard(Lcom/android/systemui/custom/MonetWatcher;)V

    :cond_0
    return-void
.end method
