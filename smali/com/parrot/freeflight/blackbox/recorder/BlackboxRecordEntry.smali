.class public abstract Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.super Ljava/lang/Object;
.source "BlackboxRecordEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$AppCommandUpdatable;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPilotingInfoUpdatable;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppButtonActionUpdatable;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$GamePadUpdatable;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$DeviceLocationUpdatable;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmdPool;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$EntryType;,
        Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$EntryCategory;
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x9

.field public static final APP_CMD:I = 0x10

.field public static final BATTERY:I = 0x4

.field public static final BUTTON_ACTION:I = 0xf

.field public static final DATAS:I = 0x1

.field public static final DATAS_1HZ:I = 0x2

.field public static final DATAS_5HZ:I = 0x3

.field public static final FLYING_STATE:I = 0x5

.field public static final FOLLOW_ME:I = 0xb

.field public static final FP_STATE:I = 0x7

.field public static final GPS_FIX:I = 0xc

.field public static final GPS_TAKING_OFF:I = 0xd

.field public static final HEADER:I = 0x0

.field public static final HOME:I = 0x8

.field public static final MPP_BUTTON_ACTION_UNKNOWN:I = -0x1

.field public static final NONE:I = 0x0

.field public static final REMOTE_STATE:I = 0xe

.field public static final RTH_HOME:I = 0xa

.field public static final RUN_ID:I = 0x6

.field protected static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field public static final TYPE_DATAS:Ljava/lang/String; = "datas"

.field public static final TYPE_DATAS_1HZ:Ljava/lang/String; = "datas_1Hz"

.field public static final TYPE_DATAS_5HZ:Ljava/lang/String; = "datas_5Hz"

.field public static final TYPE_HEADER:Ljava/lang/String; = "header"

.field protected static final TYPE_KEY:Ljava/lang/String; = "type"

.field public static final WIFI_BAND:I = 0x2

.field public static final WIFI_CHANNEL:I = 0x3

.field public static final WIFI_COUNTRY:I = 0x1


# instance fields
.field private final mCategory:I

.field protected final mMinimumNotifyCount:I

.field protected mTimestamp:D

.field private final mType:I

.field protected mVariableUpdatedCount:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "minimumNotifyCount"    # I

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mCategory:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mType:I

    .line 160
    iput p2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mMinimumNotifyCount:I

    .line 161
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "type"    # I
    .param p3, "minimumNotifyCount"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mCategory:I

    .line 165
    iput p2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mType:I

    .line 166
    iput p3, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mMinimumNotifyCount:I

    .line 167
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 171
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mTimestamp:D

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mVariableUpdatedCount:I

    .line 173
    return-void
.end method

.method public clone()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-object v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 182
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clone()Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mCategory:I

    return v0
.end method

.method public abstract getJsonObject()Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public shouldNotify()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    iget v1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mVariableUpdatedCount:I

    iget v2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mMinimumNotifyCount:I

    if-lt v1, v2, :cond_0

    .line 187
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->mVariableUpdatedCount:I

    .line 188
    const/4 v0, 0x1

    .line 190
    :cond_0
    return v0
.end method

.method public abstract update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .param p3    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
