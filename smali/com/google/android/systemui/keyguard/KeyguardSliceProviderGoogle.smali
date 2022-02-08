.class public Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;
.super Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.source "KeyguardSliceProviderGoogle.java"

# interfaces
.implements Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle$AddShadowTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCalendarUri:Landroid/net/Uri;

.field private mHideSensitiveContent:Z

.field private mHideWorkContent:Z

.field public mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

.field private mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

.field private final mWeatherUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "KeyguardSliceProvider"

    const/4 v1, 0x3

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;-><init>()V

    const-string v0, "content://com.android.systemui.keyguard/smartSpace/calendar"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mCalendarUri:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideWorkContent:Z

    const-string v0, "content://com.android.systemui.keyguard/smartSpace/weather"

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mWeatherUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    return-void
.end method

.method private addWeather(Landroidx/slice/builders/ListBuilder;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getWeatherCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mWeatherUri:Landroid/net/Uri;

    invoke-direct {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 183
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 184
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 186
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    .line 187
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroidx/core/graphics/drawable/IconCompat;

    const/4 v0, 0x1

    .line 188
    invoke-virtual {v1, p0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 190
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 6

    const-string p1, "KeyguardSliceProviderGoogle#onBindSlice"

    .line 108
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 111
    new-instance p1, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isSensitive()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 119
    iget-boolean v4, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideSensitiveContent:Z

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isWorkProfile()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 121
    iget-boolean v3, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideWorkContent:Z

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isWorkProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_9

    .line 126
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_2

    .line 131
    :cond_3
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 133
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 136
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    .line 139
    :cond_4
    new-instance v4, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHeaderUri:Landroid/net/Uri;

    invoke-direct {v4, v5}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>(Landroid/net/Uri;)V

    .line 140
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getFormattedTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    if-eqz v3, :cond_5

    .line 142
    invoke-virtual {v4, v3}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    .line 144
    :cond_5
    invoke-virtual {p1, v4}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 145
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 147
    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v5, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mCalendarUri:Landroid/net/Uri;

    invoke-direct {v4, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 148
    invoke-virtual {v4, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    if-eqz v1, :cond_6

    .line 150
    invoke-virtual {v4, v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    :cond_6
    if-eqz v3, :cond_7

    .line 153
    invoke-virtual {v4, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 155
    :cond_7
    invoke-virtual {p1, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 157
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->addWeather(Landroidx/slice/builders/ListBuilder;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V

    goto :goto_4

    .line 161
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->needsMediaLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addMediaLocked(Landroidx/slice/builders/ListBuilder;)V

    goto :goto_3

    .line 164
    :cond_a
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroid/net/Uri;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getFormattedDateLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 166
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 168
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->addWeather(Landroidx/slice/builders/ListBuilder;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addNextAlarmLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addZenModeLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addPrimaryActionLocked(Landroidx/slice/builders/ListBuilder;)V

    .line 173
    :goto_4
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1

    .line 174
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCreateSliceProvider()Z
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onCreateSliceProvider()Z

    move-result v0

    .line 94
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/systemui/dagger/SystemUIRootComponent;->inject(Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;)V

    .line 95
    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 96
    iget-object v1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {v1, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->addListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->removeListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V

    return-void
.end method

.method public onSensitiveModeChanged(ZZ)V
    .locals 4

    .line 210
    monitor-enter p0

    const/4 v0, 0x0

    .line 212
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideSensitiveContent:Z

    const/4 v2, 0x1

    if-eq v1, p1, :cond_1

    .line 213
    iput-boolean p1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideSensitiveContent:Z

    .line 214
    sget-boolean v0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSliceProvider"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Public mode changed, hide data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v2

    .line 219
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideWorkContent:Z

    if-eq p1, p2, :cond_2

    .line 220
    iput-boolean p2, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mHideWorkContent:Z

    .line 221
    sget-boolean p1, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "KeyguardSliceProvider"

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Public work mode changed, hide data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 229
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V
    .locals 2

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iput-object p1, p0, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getWeatherCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isIconProcessed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 204
    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->setIconProcessed(Z)V

    .line 205
    new-instance v1, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle$AddShadowTask;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle$AddShadowTask;-><init>(Lcom/google/android/systemui/keyguard/KeyguardSliceProviderGoogle;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V

    new-array p0, v0, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 201
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    return-void

    :catchall_0
    move-exception p1

    .line 198
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateClockLocked()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    return-void
.end method
