.class public Lcom/parrot/freeflight/update/UpdateSyncable;
.super Ljava/lang/Object;
.source "UpdateSyncable.java"

# interfaces
.implements Lcom/parrot/freeflight/util/sync/ISyncable;


# static fields
.field private static final AUTO_CHECK_DELAY_MILLIS:I = 0x240c8400

.field private static final BLACKLIST_PHP_FILE:Ljava/lang/String; = "firmware_blacklist.php"

.field public static final BLACKLIST_UPDATED_INTENT_FILTER:Ljava/lang/String; = "com.parrot.freeflight3.blacklist_updated"

.field private static final DEFAULT_SERIALNO:Ljava/lang/String; = "0000"

.field private static final MANUAL_CHECK_DELAY_MILLIS:I = 0x36ee80

.field private static final PARAM_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PARAM_PLATFORM:Ljava/lang/String; = "platform"

.field private static final PARAM_PLATFORM_NAME:Ljava/lang/String; = "Android"

.field private static final PARAM_PRODUCT:Ljava/lang/String; = "product"

.field private static final PARAM_SERIALNO:Ljava/lang/String; = "serialNo"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final PRODUCTS_TO_CHECK:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private static final RESULT_ERROR_APP_VERSION_OUT_TO_DATE:Ljava/lang/String; = "3"

.field private static final RESULT_OK:Ljava/lang/String; = "0"

.field private static final RESULT_SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final RESULT_UPDATE:Ljava/lang/String; = "5"

.field private static final TAG:Ljava/lang/String; = "UpdateSyncable"

.field private static final UPDATE_DRONES_PATH:Ljava/lang/String; = "Drones"

.field private static final UPDATE_PHP_FILE:Ljava/lang/String; = "update.php"

.field private static final UPDATE_URL_AUTHORITY:Ljava/lang/String; = "download.parrot.com"

.field private static final UPDATE_URL_SCHEME:Ljava/lang/String; = "https"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const/4 v1, 0x0

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_ARDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_CHIMERA:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_EVINRUDE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_TINOS:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/update/UpdateSyncable;->PRODUCTS_TO_CHECK:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doWork(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/CoreManager;->getUserSettings()Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v2

    .line 100
    .local v2, "settings":Lcom/parrot/freeflight/user/UserSettings;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v5, "userProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserSettings;->getKnownDrones()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserSettings;->getKnownRemoteCtrls()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    const/4 v3, 0x1

    .line 105
    .local v3, "updateOk":Z
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    sget-object v7, Lcom/parrot/freeflight/update/UpdateSyncable;->PRODUCTS_TO_CHECK:[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v1, v7, v6

    .line 108
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-direct {p0, p2, v1}, Lcom/parrot/freeflight/update/UpdateSyncable;->getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v9

    and-int/2addr v3, v9

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 113
    .local v0, "checkedProducts":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/user/UserProduct;

    .line 114
    .local v4, "userProduct":Lcom/parrot/freeflight/user/UserProduct;
    invoke-virtual {v4}, Lcom/parrot/freeflight/user/UserProduct;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 115
    .restart local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 116
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-direct {p0, p2, v1}, Lcom/parrot/freeflight/update/UpdateSyncable;->getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v7

    and-int/2addr v3, v7

    goto :goto_1

    .line 122
    .end local v0    # "checkedProducts":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    .end local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v4    # "userProduct":Lcom/parrot/freeflight/user/UserProduct;
    :cond_2
    if-eqz v3, :cond_3

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/update/UpdateSyncable;->getBlacklistedVersions(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v3

    .line 128
    :cond_3
    if-eqz v3, :cond_4

    .line 130
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "last_successful_versions_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    :cond_4
    return v3
.end method

.method public static forceNextUpdateCheck(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 296
    const-string v1, "firmware_checker"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_successful_versions_update"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    return-void
.end method

.method private getBlacklistVersionsUrl()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 164
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    .line 165
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "download.parrot.com"

    .line 166
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "Drones"

    .line 167
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "firmware_blacklist.php"

    .line 168
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "platform"

    const-string v3, "Android"

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "appVersion"

    const-string v3, "5.2.7"

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 173
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBlacklistedVersions(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdateSyncable;->getBlacklistVersionsUrl()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "urlString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 142
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 143
    .local v5, "url":Ljava/net/URL;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Lcom/parrot/freeflight/update/UpdateSyncable;->parseBlacklistVersions(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 145
    .local v1, "blacklistVersionsRetrieved":Z
    if-eqz v1, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.parrot.freeflight3.blacklist_updated"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "blacklistUpdatedIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    .end local v0    # "blacklistUpdatedIntent":Landroid/content/Intent;
    :cond_0
    if-eqz v4, :cond_1

    .line 155
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    move-object v3, v4

    .line 151
    .end local v1    # "blacklistVersionsRetrieved":Z
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return v1

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    const/4 v1, 0x0

    .line 153
    if-eqz v3, :cond_2

    .line 155
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 156
    :catch_1
    move-exception v7

    goto :goto_1

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_3

    .line 155
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 157
    :cond_3
    :goto_4
    throw v7

    .line 156
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "blacklistVersionsRetrieved":Z
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v1    # "blacklistVersionsRetrieved":Z
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 153
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 150
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private getLastVersion(Landroid/content/SharedPreferences;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z
    .locals 9
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 222
    invoke-static {p2}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getFirmwareSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "versionSharedPrefName":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v6

    .line 227
    :cond_1
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/update/UpdateSyncable;->getVersionUrl(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "urlString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 233
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 234
    .local v3, "url":Ljava/net/URL;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v5, v7}, Lcom/parrot/freeflight/update/UpdateSyncable;->parseVersion(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 239
    if-eqz v2, :cond_0

    .line 241
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v7

    goto :goto_0

    .line 236
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "url":Ljava/net/URL;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_0

    .line 241
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 242
    :catch_2
    move-exception v7

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_2

    .line 241
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 243
    :cond_2
    :goto_3
    throw v6

    .line 242
    :catch_3
    move-exception v7

    goto :goto_3

    .line 239
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 236
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getVersionUrl(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 6
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 250
    const-string v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "productId":Ljava/lang/String;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "https"

    .line 253
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "download.parrot.com"

    .line 254
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "Drones"

    .line 255
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 256
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "update.php"

    .line 257
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "product"

    .line 258
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "serialNo"

    const-string v4, "0000"

    .line 259
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "version"

    const-string v4, "0.0.0"

    .line 260
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v4, "Android"

    .line 261
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "appVersion"

    const-string v4, "5.2.7"

    .line 262
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 263
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 265
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseBlacklistVersions(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 16
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "line"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    const/4 v9, 0x0

    .line 218
    :goto_0
    return v9

    .line 180
    :cond_0
    const-string v13, "\\|"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 181
    .local v12, "version":[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x2

    if-ge v13, v14, :cond_1

    .line 182
    const/4 v9, 0x0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v9, 0x1

    .line 186
    .local v9, "returnValue":Z
    const/4 v13, 0x0

    aget-object v14, v12, v13

    const/4 v13, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v13, :pswitch_data_1

    .line 215
    const/4 v9, 0x0

    goto :goto_0

    .line 186
    :pswitch_0
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x0

    goto :goto_1

    .line 189
    :pswitch_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v6, "jsonObject":Lorg/json/JSONObject;
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 191
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 192
    .local v5, "ids":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 193
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 194
    .local v8, "productId":Ljava/lang/String;
    const/16 v13, 0x10

    invoke-static {v8, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    .line 195
    .local v7, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-static {v7}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getBlacklistSharedPrefNameFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, "sharedPrefKey":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 201
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 202
    .local v11, "values":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 203
    .local v1, "blacklistedVersions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_4

    .line 204
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 206
    :cond_4
    invoke-interface {v3, v10, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 209
    .end local v1    # "blacklistedVersions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "i":I
    .end local v5    # "ids":Ljava/util/Iterator;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v8    # "productId":Ljava/lang/String;
    .end local v10    # "sharedPrefKey":Ljava/lang/String;
    .end local v11    # "values":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Lorg/json/JSONException;
    const-string v13, "UpdateSyncable"

    const-string v14, "parseBlacklistVersions.JSONException"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 v9, 0x0

    goto :goto_0

    .line 208
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v5    # "ids":Ljava/util/Iterator;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private parseVersion(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "versionSharedPrefName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "line"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 269
    if-nez p3, :cond_0

    move v0, v2

    .line 292
    :goto_0
    :pswitch_0
    return v0

    .line 272
    :cond_0
    const-string v3, "\\|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "version":[Ljava/lang/String;
    array-length v3, v1

    if-ge v3, v4, :cond_1

    move v0, v2

    .line 274
    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x1

    .line 278
    .local v0, "returnValue":Z
    aget-object v5, v1, v2

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_2
    :pswitch_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 289
    const/4 v0, 0x0

    goto :goto_0

    .line 278
    :pswitch_2
    const-string v4, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :pswitch_3
    const-string v2, "5"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_4
    const-string v2, "3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    .line 283
    :pswitch_5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkUpdates(Landroid/content/Context;Z)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "manual"    # Z

    .prologue
    const-wide/16 v10, 0x0

    .line 82
    const-string v6, "firmware_checker"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 85
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "last_successful_versions_update"

    invoke-interface {v2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 86
    .local v4, "timeSinceLastUpdate":J
    if-eqz p2, :cond_0

    const-wide/32 v0, 0x36ee80

    .line 87
    .local v0, "delay":J
    :goto_0
    cmp-long v6, v4, v10

    if-lez v6, :cond_1

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    .line 89
    const/4 v3, 0x1

    .line 95
    :goto_1
    return v3

    .line 86
    .end local v0    # "delay":J
    :cond_0
    const-wide/32 v0, 0x240c8400

    goto :goto_0

    .line 92
    .restart local v0    # "delay":J
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/parrot/freeflight/update/UpdateSyncable;->doWork(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v3

    .line 94
    .local v3, "updateOk":Z
    const-string v6, "UpdateSyncable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkUpdates result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPerformSync(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/update/UpdateSyncable;->checkUpdates(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method
