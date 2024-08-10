.class public Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;
.super Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.source "AppCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$AppCommandUpdatable;


# static fields
.field private static final MINIMUM_NOTIFY_COUNT:I = 0x1

.field private static final PRODUCT_APP_COMMAND_KEY:Ljava/lang/String; = "app_command"

.field private static final PRODUCT_APP_COMMAND_LANDING:Ljava/lang/String; = "landing"


# instance fields
.field private mAppCommand:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;-><init>(III)V

    .line 23
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;->clear()V

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;->mAppCommand:I

    .line 30
    return-void
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "type"

    const-string v4, "app_command"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v3, "timestamp"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;->mTimestamp:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 55
    iget v3, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;->mAppCommand:I

    packed-switch v3, :pswitch_data_0

    .line 60
    const-string v0, ""

    .line 63
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    const-string v3, "datas"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .end local v0    # "cmd":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 57
    :pswitch_0
    const-string v0, "landing"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_0

    .line 64
    .end local v0    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    return-void
.end method

.method public updateAppCommand(DI)V
    .locals 1
    .param p1, "timestamp"    # D
    .param p3, "appCommand"    # I

    .prologue
    .line 40
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 41
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;->mTimestamp:D

    .line 42
    iput p3, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;->mAppCommand:I

    .line 43
    iget v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;->mVariableUpdatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/AppCommand;->mVariableUpdatedCount:I

    .line 45
    :cond_0
    return-void
.end method
