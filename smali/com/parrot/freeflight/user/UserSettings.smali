.class public Lcom/parrot/freeflight/user/UserSettings;
.super Ljava/lang/Object;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;,
        Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;
    }
.end annotation


# static fields
.field private static final KEY_CLEARED_TO_GET_PROPER_UIDS:Ljava/lang/String; = "cleared_to_get_proper_uids"

.field private static final KEY_CURRENT_DRONE_ID:Ljava/lang/String; = "current_drone_id"

.field private static final KEY_CURRENT_REMOTE_CTRL_ID:Ljava/lang/String; = "current_remote_ctrl_id"

.field private static final KEY_KNOWN_DRONE_LIST:Ljava/lang/String; = "known_drones"

.field private static final KEY_KNOWN_REMOTE_CTRL_LIST:Ljava/lang/String; = "known_remote_ctrl"

.field private static final PREFERENCE_FILENAME:Ljava/lang/String; = "user_settings"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentDroneId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentRemoteCtrlId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mKnownDroneSet:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKnownRemoteCtrlSet:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/parrot/freeflight/user/UserSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/user/UserSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/user/UserSettings;->mContext:Landroid/content/Context;

    .line 66
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 67
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    const-string/jumbo v3, "user_settings"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 73
    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "cleared_to_get_proper_uids"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    sget-object v3, Lcom/parrot/freeflight/user/UserSettings;->TAG:Ljava/lang/String;

    const-string v4, "Clearing known drone list to remove unproper uids"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 76
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v3, "cleared_to_get_proper_uids"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "known_drones"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 81
    .local v0, "droneSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    .line 82
    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "current_drone_id"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    .line 83
    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "known_remote_ctrl"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 84
    .local v2, "remoteCtrlSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    .line 85
    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "current_remote_ctrl_id"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private addToKnownDroneSet(Ljava/lang/String;)V
    .locals 1
    .param p1, "droneId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateSyncable;->forceNextUpdateCheck(Landroid/content/Context;)V

    .line 115
    :cond_0
    return-void
.end method

.method private addToKnownRemoteCtrlSet(Ljava/lang/String;)V
    .locals 1
    .param p1, "remoteCtrlId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateSyncable;->forceNextUpdateCheck(Landroid/content/Context;)V

    .line 173
    :cond_0
    return-void
.end method

.method public static convertOldProductEnum(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "oldProductEnumValue"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 322
    packed-switch p0, :pswitch_data_0

    .line 349
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 324
    :pswitch_1
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 326
    :pswitch_2
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 328
    :pswitch_3
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 330
    :pswitch_4
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 332
    :pswitch_5
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 334
    :pswitch_6
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 336
    :pswitch_7
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 338
    :pswitch_8
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 340
    :pswitch_9
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 342
    :pswitch_a
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 344
    :pswitch_b
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getKnownProducts(Ljava/util/Set;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I
    .param p3, "currentProductId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/user/UserProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "mKnownProductsUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 422
    .local v1, "knownProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 423
    .local v2, "productUid":Ljava/lang/String;
    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 424
    iget-object v5, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "droneDescription":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 426
    invoke-static {p2, v0}, Lcom/parrot/freeflight/user/UserProductFactory;->create(ILjava/lang/String;)Lcom/parrot/freeflight/user/UserProduct;

    move-result-object v3

    .line 427
    .local v3, "userProduct":Lcom/parrot/freeflight/user/UserProduct;
    if-eqz v3, :cond_0

    .line 428
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    .end local v0    # "droneDescription":Ljava/lang/String;
    .end local v2    # "productUid":Ljava/lang/String;
    .end local v3    # "userProduct":Lcom/parrot/freeflight/user/UserProduct;
    :cond_1
    return-object v1
.end method

.method private notifyUserDroneChange()V
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;

    .line 256
    .local v0, "listener":Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;->onChange()V

    goto :goto_0

    .line 258
    .end local v0    # "listener":Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;
    :cond_0
    return-void
.end method

.method private notifyUserRemoteCtrlChange()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;

    .line 262
    .local v0, "listener":Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;->onChange()V

    goto :goto_0

    .line 264
    .end local v0    # "listener":Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;
    :cond_0
    return-void
.end method

.method private saveCurrentDrone()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "known_drones"

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 228
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserDrone;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v1, "current_drone_id"

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 232
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private saveCurrentRemoteCtrl()V
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 237
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "known_remote_ctrl"

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 238
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string v1, "current_remote_ctrl_id"

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private saveProduct(Lcom/parrot/freeflight/user/UserProduct;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .param p1, "userProduct"    # Lcom/parrot/freeflight/user/UserProduct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "knownProductKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/user/UserProduct;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p3, "knownProductSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/parrot/freeflight/user/UserProduct;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "productId":Ljava/lang/String;
    const-string v2, "_bridged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-virtual {p1}, Lcom/parrot/freeflight/user/UserProduct;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private setCurrentUserDrone(Lcom/parrot/freeflight/user/UserDrone;)V
    .locals 1
    .param p1, "userDrone"    # Lcom/parrot/freeflight/user/UserDrone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    iput-object p1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/user/UserSettings;->addToKnownDroneSet(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->saveCurrentDrone()V

    .line 107
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->notifyUserDroneChange()V

    .line 108
    return-void
.end method

.method private setProductUpdateState(Ljava/lang/String;II)V
    .locals 4
    .param p1, "productUid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "updateState"    # I
    .param p3, "productType"    # I

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "productDescription":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 356
    invoke-static {p3, v0}, Lcom/parrot/freeflight/user/UserProductFactory;->create(ILjava/lang/String;)Lcom/parrot/freeflight/user/UserProduct;

    move-result-object v1

    .line 357
    .local v1, "userProduct":Lcom/parrot/freeflight/user/UserProduct;
    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v1, p2}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    .line 359
    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserProduct;->shouldSave()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/user/UserSettings;->saveProduct(Lcom/parrot/freeflight/user/UserProduct;)V

    .line 365
    .end local v0    # "productDescription":Ljava/lang/String;
    .end local v1    # "userProduct":Lcom/parrot/freeflight/user/UserProduct;
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnUserDroneChangeListener(Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {p1}, Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;->onChange()V

    .line 150
    return-void
.end method

.method public addOnUserRemoteCtrlChangeListener(Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 247
    invoke-interface {p1}, Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;->onChange()V

    .line 248
    return-void
.end method

.method public forgetCurrentUserDrone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 120
    .local v1, "userDrone":Lcom/parrot/freeflight/user/UserDrone;
    iput-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 121
    iput-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    .line 122
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/user/UserSettings;->unregisterUserDrone(Lcom/parrot/freeflight/user/UserDrone;)V

    .line 123
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_drone_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->notifyUserDroneChange()V

    .line 128
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "userDrone":Lcom/parrot/freeflight/user/UserDrone;
    :cond_0
    return-void
.end method

.method public forgetCurrentUserRemoteCtrl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-eqz v1, :cond_0

    .line 194
    iput-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 195
    iput-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "current_remote_ctrl_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->notifyUserRemoteCtrlChange()V

    .line 201
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public getCurrentDroneId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    return-object v0
.end method

.method public getKnownDrones()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/user/UserProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/parrot/freeflight/user/UserSettings;->getKnownProducts(Ljava/util/Set;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 439
    .local v0, "knownProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_0
    sget-object v2, Lcom/parrot/freeflight/user/UserSettings;->TAG:Ljava/lang/String;

    const-string v3, "known drones :"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/user/UserProduct;

    .line 445
    .local v1, "product":Lcom/parrot/freeflight/user/UserProduct;
    sget-object v3, Lcom/parrot/freeflight/user/UserSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserProduct;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserProduct;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v1    # "product":Lcom/parrot/freeflight/user/UserProduct;
    :cond_1
    return-object v0
.end method

.method public getKnownRemoteCtrls()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/user/UserProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/parrot/freeflight/user/UserSettings;->getKnownProducts(Ljava/util/Set;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 454
    .local v0, "knownProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_0
    return-object v0
.end method

.method public getUserDrone()Lcom/parrot/freeflight/user/UserDrone;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 268
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "droneInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 271
    invoke-static {v0}, Lcom/parrot/freeflight/user/UserDrone;->create(Ljava/lang/String;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 272
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-nez v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 275
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_drone_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 286
    .end local v0    # "droneInfo":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    return-object v2

    .line 278
    .restart local v0    # "droneInfo":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserDrone;->shouldSave()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 281
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v3}, Lcom/parrot/freeflight/user/UserDrone;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public getUserRemoteCtrl()Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 296
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "remoteCtrlInfo":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 299
    invoke-static {v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->create(Ljava/lang/String;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 300
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-nez v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_remote_ctrl_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "remoteCtrlInfo":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    return-object v2

    .line 306
    .restart local v1    # "remoteCtrlInfo":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->shouldSave()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v3}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public registerUserDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 4
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    new-instance v0, Lcom/parrot/freeflight/user/UserDrone;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/user/UserDrone;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 132
    .local v0, "drone":Lcom/parrot/freeflight/user/UserDrone;
    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/user/UserSettings;->addToKnownDroneSet(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 134
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "known_drones"

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserDrone;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method public registerUserRemoteCtrl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 4
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    new-instance v1, Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 177
    .local v1, "remoteCtrl":Lcom/parrot/freeflight/user/UserRemoteCtrl;
    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/user/UserSettings;->addToKnownRemoteCtrlSet(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "known_remote_ctrl"

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    return-void
.end method

.method public removeOnUserDroneChangeListener(Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mOnUserDroneChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public removeOnUserRemoteCtrlChangeListener(Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mOnUserRemoteCtrlChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public saveProduct(Lcom/parrot/freeflight/user/UserProduct;)V
    .locals 2
    .param p1, "userProduct"    # Lcom/parrot/freeflight/user/UserProduct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    instance-of v0, p1, Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "known_drones"

    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/user/UserSettings;->saveProduct(Lcom/parrot/freeflight/user/UserProduct;Ljava/lang/String;Ljava/util/Set;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    instance-of v0, p1, Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "known_remote_ctrl"

    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/user/UserSettings;->saveProduct(Lcom/parrot/freeflight/user/UserProduct;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0
.end method

.method public setCurrentUserDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 3
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/user/UserDrone;->isSameProduct(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/user/UserDrone;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/user/UserDrone;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 91
    .local v0, "currentUserDrone":Lcom/parrot/freeflight/user/UserDrone;
    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "uid":Ljava/lang/String;
    const-string v2, "_bridged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/user/UserSettings;->setCurrentUserDrone(Lcom/parrot/freeflight/user/UserDrone;)V

    .line 100
    .end local v0    # "currentUserDrone":Lcom/parrot/freeflight/user/UserDrone;
    .end local v1    # "uid":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 95
    .restart local v0    # "currentUserDrone":Lcom/parrot/freeflight/user/UserDrone;
    .restart local v1    # "uid":Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->notifyUserDroneChange()V

    goto :goto_0
.end method

.method public setCurrentUserDroneName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/user/UserDrone;->setName(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserDrone;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->saveCurrentDrone()V

    .line 399
    :cond_0
    return-void
.end method

.method public setCurrentUserDroneUid(Ljava/lang/String;)V
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 402
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_bridged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    sget-object v1, Lcom/parrot/freeflight/user/UserSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to user drone with name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v3}, Lcom/parrot/freeflight/user/UserDrone;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v0, Lcom/parrot/freeflight/user/UserDrone;

    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v1}, Lcom/parrot/freeflight/user/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserDrone;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v3}, Lcom/parrot/freeflight/user/UserDrone;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v3}, Lcom/parrot/freeflight/user/UserDrone;->getUpdateState()I

    move-result v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/user/UserDrone;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 405
    .local v0, "currentDrone":Lcom/parrot/freeflight/user/UserDrone;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/user/UserSettings;->setCurrentUserDrone(Lcom/parrot/freeflight/user/UserDrone;)V

    .line 407
    .end local v0    # "currentDrone":Lcom/parrot/freeflight/user/UserDrone;
    :cond_0
    return-void
.end method

.method public setCurrentUserDroneVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "softwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/user/UserDrone;->setSoftwareVersion(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserDrone;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->saveCurrentDrone()V

    .line 389
    :cond_0
    return-void
.end method

.method public setCurrentUserRemoteCtrl(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 2
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->isSameProduct(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    iput-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/user/UserSettings;->addToKnownRemoteCtrlSet(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->saveCurrentRemoteCtrl()V

    .line 162
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->notifyUserRemoteCtrlChange()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getNetworkType()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->setProductNetworkType(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_NETWORK_TYPE_ENUM;)V

    goto :goto_0
.end method

.method public setCurrentUserRemoteCtrlVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "softwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 410
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->setSoftwareVersion(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/parrot/freeflight/user/UserSettings;->saveCurrentRemoteCtrl()V

    .line 417
    :cond_0
    return-void
.end method

.method public setDroneUpdateState(Ljava/lang/String;I)V
    .locals 1
    .param p1, "productUid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "updateState"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentDroneId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/user/UserDrone;->setUpdateState(I)V

    .line 371
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/user/UserSettings;->setProductUpdateState(Ljava/lang/String;II)V

    .line 372
    return-void
.end method

.method public setRemoteCtrlUpdateState(Ljava/lang/String;I)V
    .locals 1
    .param p1, "productUid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "updateState"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentRemoteCtrlId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/user/UserSettings;->mCurrentUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->setUpdateState(I)V

    .line 378
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/user/UserSettings;->setProductUpdateState(Ljava/lang/String;II)V

    .line 379
    return-void
.end method

.method public unregisterUserDrone(Lcom/parrot/freeflight/user/UserDrone;)V
    .locals 3
    .param p1, "userDrone"    # Lcom/parrot/freeflight/user/UserDrone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parrot/freeflight/user/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "known_drones"

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownDroneSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-virtual {p1}, Lcom/parrot/freeflight/user/UserDrone;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    return-void
.end method

.method public unregisterUserRemoteCtrl(Lcom/parrot/freeflight/user/UserRemoteCtrl;)V
    .locals 3
    .param p1, "userRemoteCtrl"    # Lcom/parrot/freeflight/user/UserRemoteCtrl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    iget-object v1, p0, Lcom/parrot/freeflight/user/UserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "known_remote_ctrl"

    iget-object v2, p0, Lcom/parrot/freeflight/user/UserSettings;->mKnownRemoteCtrlSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-virtual {p1}, Lcom/parrot/freeflight/user/UserRemoteCtrl;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    return-void
.end method
