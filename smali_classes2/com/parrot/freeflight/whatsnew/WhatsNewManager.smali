.class public Lcom/parrot/freeflight/whatsnew/WhatsNewManager;
.super Ljava/lang/Object;
.source "WhatsNewManager.java"


# static fields
.field private static final NO_MATCHING_VERSION:I = -0x1

.field private static final SHARED_PREF_KNOWN_VERSION_NAMES:Ljava/lang/String; = "known_version_names"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "whatsnew"

.field private static final VERSIONS_FILE:Ljava/lang/String; = "whats_new/versions.json"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToKnownVersions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "versionName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-static {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->getKnownVersionNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 70
    .local v1, "versionNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v2, "whatsnew"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "known_version_names"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static checkVersionUpdate(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-static {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->getKnownVersionNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 38
    .local v0, "knownVersionNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "5.2.7"

    .line 39
    .local v2, "version":Ljava/lang/String;
    invoke-static {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->getVersionList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 40
    .local v3, "versionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/whatsnew/model/Version;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 41
    invoke-static {v2, v3}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->getMatchingVersionIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    .line 42
    .local v1, "matchingVersionIndex":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 43
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/whatsnew/model/Version;

    iget-object v4, v4, Lcom/parrot/freeflight/whatsnew/model/Version;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    const/4 v4, 0x2

    new-array v5, v4, [Landroid/content/Intent;

    const/4 v4, 0x0

    .line 46
    invoke-static {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x1

    .line 47
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/whatsnew/model/Version;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/freeflight/whatsnew/model/Version;)Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v5, v6

    .line 45
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    .line 51
    .end local v1    # "matchingVersionIndex":I
    :cond_0
    return-void
.end method

.method private static getDrawableResByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKnownVersionNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const-string v1, "whatsnew"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "known_version_names"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static getMatchingVersionIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .param p0, "versionName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/whatsnew/model/Version;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "versionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/whatsnew/model/Version;>;"
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "split":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/whatsnew/model/Version;

    iget-object v2, v2, Lcom/parrot/freeflight/whatsnew/model/Version;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 56
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getStringResByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVersionList(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/whatsnew/model/Version;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 80
    :try_start_0
    const-string v13, "whats_new/versions.json"

    invoke-static {p0, v13}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "versionsJson":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 82
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 83
    .local v10, "versionsArray":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v9, "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/whatsnew/model/Version;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_3

    .line 85
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 86
    .local v8, "versionObject":Lorg/json/JSONObject;
    const-string v13, "features"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 87
    .local v4, "featuresArray":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v3, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/whatsnew/model/Feature;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_1

    .line 89
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 90
    .local v2, "featureObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/parrot/freeflight/whatsnew/model/Feature;

    invoke-direct {v1}, Lcom/parrot/freeflight/whatsnew/model/Feature;-><init>()V

    .line 91
    .local v1, "feature":Lcom/parrot/freeflight/whatsnew/model/Feature;
    const-string v13, "title_second_identifier"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->getStringResByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    iput v13, v1, Lcom/parrot/freeflight/whatsnew/model/Feature;->titleRes:I

    .line 92
    const-string v13, "text_second_identifier"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->getStringResByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    iput v13, v1, Lcom/parrot/freeflight/whatsnew/model/Feature;->textRes:I

    .line 93
    const-string v13, "img"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/parrot/freeflight/whatsnew/WhatsNewManager;->getDrawableResByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    iput v13, v1, Lcom/parrot/freeflight/whatsnew/model/Feature;->imageRes:I

    .line 94
    iget v13, v1, Lcom/parrot/freeflight/whatsnew/model/Feature;->titleRes:I

    if-eqz v13, :cond_0

    iget v13, v1, Lcom/parrot/freeflight/whatsnew/model/Feature;->textRes:I

    if-eqz v13, :cond_0

    iget v13, v1, Lcom/parrot/freeflight/whatsnew/model/Feature;->imageRes:I

    if-eqz v13, :cond_0

    .line 95
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "feature":Lcom/parrot/freeflight/whatsnew/model/Feature;
    .end local v2    # "featureObject":Lorg/json/JSONObject;
    :cond_1
    new-instance v7, Lcom/parrot/freeflight/whatsnew/model/Version;

    invoke-direct {v7}, Lcom/parrot/freeflight/whatsnew/model/Version;-><init>()V

    .line 99
    .local v7, "version":Lcom/parrot/freeflight/whatsnew/model/Version;
    const-string v13, "version"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/parrot/freeflight/whatsnew/model/Version;->name:Ljava/lang/String;

    .line 100
    iput-object v3, v7, Lcom/parrot/freeflight/whatsnew/model/Version;->features:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v3    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/whatsnew/model/Feature;>;"
    .end local v4    # "featuresArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "version":Lcom/parrot/freeflight/whatsnew/model/Version;
    .end local v8    # "versionObject":Lorg/json/JSONObject;
    .end local v9    # "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/whatsnew/model/Version;>;"
    .end local v10    # "versionsArray":Lorg/json/JSONArray;
    :cond_2
    move-object v9, v12

    .line 108
    .end local v11    # "versionsJson":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v9

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v12

    .line 108
    goto :goto_2
.end method

.method private static loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "assetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 115
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 117
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 118
    .local v1, "codeFile":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v6, "stringBuffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 122
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 125
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "stringBuffer":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 126
    .end local v1    # "codeFile":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    const/4 v7, 0x0

    .line 129
    if-eqz v3, :cond_0

    .line 131
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v7

    .line 124
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "codeFile":Ljava/io/InputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "str":Ljava/lang/String;
    .restart local v6    # "stringBuffer":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 129
    if-eqz v4, :cond_2

    .line 131
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    move-object v3, v4

    .line 124
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 132
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 133
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 132
    .end local v1    # "codeFile":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "stringBuffer":Ljava/lang/StringBuilder;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 133
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 129
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    .line 131
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 134
    :cond_3
    :goto_5
    throw v7

    .line 132
    :catch_3
    move-exception v2

    .line 133
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 129
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "codeFile":Ljava/io/InputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 125
    .end local v1    # "codeFile":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    goto :goto_1
.end method
