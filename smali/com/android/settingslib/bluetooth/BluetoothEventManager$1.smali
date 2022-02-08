.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;
.super Landroid/database/ContentObserver;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 163
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 164
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->val$context:Landroid/content/Context;

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_off_timeout"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 164
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothTimeoutReceiver;->setTimeoutAlarm(Landroid/content/Context;J)V

    return-void
.end method
