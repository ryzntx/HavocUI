.class public Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSpaceBroadcastReceiver.java"


# instance fields
.field private final mController:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;->mController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    return-void
.end method

.method private notify(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 7

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 77
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "com.google.android.googlequicksearchbox"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "SmartSpaceReceiver"

    const-string v1, "Cannot find GSA"

    .line 79
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    :goto_0
    move-object v6, p2

    .line 82
    new-instance p2, Lcom/google/android/systemui/smartspace/NewCardInfo;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/smartspace/NewCardInfo;-><init>(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZJLandroid/content/pm/PackageInfo;)V

    .line 83
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;->mController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onNewCard(Lcom/google/android/systemui/smartspace/NewCardInfo;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 26
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    const-string v1, "SmartSpaceReceiver"

    if-eqz v0, :cond_0

    const-string v0, "receiving update"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "uid"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-string p0, "rebroadcast"

    .line 33
    invoke-virtual {p2, p0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p2, p0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void

    .line 41
    :cond_2
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 42
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const-string v0, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CARD"

    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 46
    new-instance v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;

    invoke-direct {v2}, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;-><init>()V

    .line 48
    :try_start_0
    invoke-static {v2, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 49
    iget-object v0, v2, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    array-length v2, v0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_8

    aget-object v6, v0, v5

    .line 50
    iget v7, v6, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardPriority:I

    if-ne v7, v4, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v3

    .line 51
    :goto_1
    iget v8, v6, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardPriority:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    move v8, v4

    goto :goto_2

    :cond_5
    move v8, v3

    :goto_2
    if-nez v7, :cond_6

    if-nez v8, :cond_6

    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unrecognized card priority: "

    .line 55
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v9, v6, Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->cardPriority:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_6
    invoke-direct {p0, v6, p1, p2, v7}, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;->notify(Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Context;Landroid/content/Intent;Z)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "proto"

    .line 63
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 66
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "receiving update with no proto: "

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method
