.class Lcom/android/systemui/qs/tiles/BatterySaverTile$2;
.super Ljava/lang/Object;
.source "BatterySaverTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BatterySaverTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BatterySaverTile;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$2;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$2;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
