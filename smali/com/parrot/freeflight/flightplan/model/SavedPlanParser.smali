.class public Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;
.super Ljava/lang/Object;
.source "SavedPlanParser.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field public static final CACHED_JSON_FILE_PATH:Ljava/lang/String;

.field public static final CACHED_MAVLINK_FILE_PATH:Ljava/lang/String;

.field public static final JSON_FILE_NAME:Ljava/lang/String; = "savedPlan.json"

.field public static final MAVLINK_FILE_NAME:Ljava/lang/String; = "flightplan.mavlink"

.field private static final PROPERTY_BUCKLE:Ljava/lang/String; = "buckled"

.field static final PROPERTY_PLAN:Ljava/lang/String; = "plan"

.field static final PROPERTY_POI:Ljava/lang/String; = "poi"

.field static final PROPERTY_TAKEOFF:Ljava/lang/String; = "takeoff"

.field static final PROPERTY_WAYPOINTS:Ljava/lang/String; = "wayPoints"

.field static final PROPERTY_WP_ACTIONS:Ljava/lang/String; = "actions"

.field private static final PROPERTY_WP_POIINDEX:Ljava/lang/String; = "poi"

.field public static final SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

.field public static final SCREENSHORT_FILE_NAME:Ljava/lang/String; = "screenshot.png"

.field private static final TAG:Ljava/lang/String; = "SavedPlanParser"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FLIGHTPLAN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "externalFolder":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 60
    .local v2, "preCondition":Z
    :goto_0
    if-eqz v2, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    sput-object v1, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    .line 71
    :goto_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "cacheFloder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 75
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cachedJson.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->CACHED_JSON_FILE_PATH:Ljava/lang/String;

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cachedMavlink.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->CACHED_MAVLINK_FILE_PATH:Ljava/lang/String;

    .line 77
    return-void

    .line 59
    .end local v0    # "cacheFloder":Ljava/io/File;
    .end local v2    # "preCondition":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 68
    .restart local v2    # "preCondition":Z
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FLIGHTPLAN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fileToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 316
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v5, "json":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 321
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v8, 0x1000

    :try_start_0
    new-array v2, v8, [C

    .line 322
    .local v2, "buffer":[C
    const/4 v7, 0x0

    .line 323
    .local v7, "readLen":I
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 325
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 328
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buffer":[C
    .end local v7    # "readLen":I
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    if-eqz v0, :cond_0

    .line 332
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 339
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "jsonContent":Ljava/lang/String;
    :try_start_4
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 348
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "json":Ljava/lang/StringBuilder;
    .end local v6    # "jsonContent":Ljava/lang/String;
    :goto_3
    return-object v8

    .line 330
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v5    # "json":Ljava/lang/StringBuilder;
    .restart local v7    # "readLen":I
    :cond_1
    if-eqz v1, :cond_4

    .line 332
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    .line 335
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 333
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 334
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 335
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 333
    .end local v2    # "buffer":[C
    .end local v7    # "readLen":I
    :catch_2
    move-exception v3

    .line 334
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 330
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_2

    .line 332
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 335
    :cond_2
    :goto_5
    throw v8

    .line 333
    :catch_3
    move-exception v3

    .line 334
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 342
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "jsonContent":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 343
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 348
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v5    # "json":Ljava/lang/StringBuilder;
    .end local v6    # "jsonContent":Ljava/lang/String;
    :goto_6
    const/4 v8, 0x0

    goto :goto_3

    .line 346
    :cond_3
    const-string v8, "SavedPlanParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file not exist : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 330
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v5    # "json":Ljava/lang/StringBuilder;
    .restart local v7    # "readLen":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 327
    .end local v2    # "buffer":[C
    .end local v7    # "readLen":I
    :catch_5
    move-exception v3

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v7    # "readLen":I
    :cond_4
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getAllSavedPlanGeneralInfos()Ljava/util/List;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v5, "savedPlans":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;>;"
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "savedPlanFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "childrenFolders":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v7, v0

    if-lez v7, :cond_1

    .line 114
    array-length v8, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v6, v0, v7

    .line 115
    .local v6, "uuid":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 116
    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->getSavedPlanJsonFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->fileToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    .local v3, "jsonData":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 119
    :try_start_0
    new-instance v2, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-direct {v2}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;-><init>()V

    .line 120
    .local v2, "generalInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->initWithJsonObject(Lorg/json/JSONObject;)V

    .line 121
    invoke-virtual {v2, v6}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->setUuid(Ljava/lang/String;)V

    .line 122
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2    # "generalInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .end local v3    # "jsonData":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 123
    .restart local v3    # "jsonData":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v0    # "childrenFolders":[Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonData":Lorg/json/JSONObject;
    .end local v6    # "uuid":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static getSavedPlanJsonFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "savedPlan.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->CACHED_JSON_FILE_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSavedPlanMavlinkFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flightplan.mavlink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSavedPlanScreenshotFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "screenshot.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseJsonActionArray(Lorg/json/JSONArray;Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;)V
    .locals 7
    .param p0, "actionArray"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "callBack"    # Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 302
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 303
    .local v1, "actionData":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Lcom/parrot/freeflight/flightplan/model/FlightPlanActionFactory;->createAction(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v0

    .line 305
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;->initWithJsonObject(Lorg/json/JSONObject;)V

    .line 307
    invoke-interface {p1, v0}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;->onActionFound(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    .line 301
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    :cond_0
    const-string v4, "SavedPlanParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t find action for type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v1    # "actionData":Lorg/json/JSONObject;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static parseJsonFile(Ljava/lang/String;Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;)Z
    .locals 18
    .param p0, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "callBack"    # Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    if-nez p0, :cond_0

    sget-object v6, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->CACHED_JSON_FILE_PATH:Ljava/lang/String;

    .line 136
    .local v6, "jsonFilePath":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->fileToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 137
    .local v5, "jsonData":Lorg/json/JSONObject;
    if-eqz v5, :cond_6

    .line 140
    :try_start_0
    new-instance v3, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;

    invoke-direct {v3}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;-><init>()V

    .line 141
    .local v3, "generalInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    invoke-virtual {v3, v5}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->initWithJsonObject(Lorg/json/JSONObject;)V

    .line 142
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;->onSavedPlanFound(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V

    .line 144
    new-instance v7, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    invoke-direct {v7}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;-><init>()V

    .line 145
    .local v7, "mapInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    invoke-virtual {v7, v5}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->initWithJsonObject(Lorg/json/JSONObject;)V

    .line 146
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;->onMapInfoFound(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V

    .line 148
    const-string/jumbo v16, "plan"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 149
    const-string/jumbo v16, "plan"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 151
    .local v8, "planData":Lorg/json/JSONObject;
    const-string/jumbo v16, "poi"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 153
    const-string/jumbo v16, "poi"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 154
    .local v10, "poiData":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_1

    .line 155
    new-instance v9, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-direct {v9}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;-><init>()V

    .line 156
    .local v9, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->initWithJsonObject(Lorg/json/JSONObject;)V

    .line 157
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;->onPoiFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    .end local v3    # "generalInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .end local v4    # "i":I
    .end local v5    # "jsonData":Lorg/json/JSONObject;
    .end local v6    # "jsonFilePath":Ljava/lang/String;
    .end local v7    # "mapInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    .end local v8    # "planData":Lorg/json/JSONObject;
    .end local v9    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .end local v10    # "poiData":Lorg/json/JSONArray;
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->getSavedPlanJsonFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 161
    .restart local v3    # "generalInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .restart local v5    # "jsonData":Lorg/json/JSONObject;
    .restart local v6    # "jsonFilePath":Ljava/lang/String;
    .restart local v7    # "mapInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    .restart local v8    # "planData":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v16, "takeoff"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 163
    const-string/jumbo v16, "takeoff"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 164
    .local v12, "takeOffActionArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 165
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->parseJsonActionArray(Lorg/json/JSONArray;Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;)V

    .line 169
    .end local v12    # "takeOffActionArray":Lorg/json/JSONArray;
    :cond_2
    const-string/jumbo v16, "wayPoints"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 171
    const-string/jumbo v16, "wayPoints"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 172
    .local v14, "wayPointData":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_5

    .line 173
    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 174
    .local v15, "wpDate":Lorg/json/JSONObject;
    new-instance v13, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-direct {v13}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;-><init>()V

    .line 175
    .local v13, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v13, v15}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->initWithJsonObject(Lorg/json/JSONObject;)V

    .line 176
    invoke-virtual {v13, v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setIndex(I)V

    .line 177
    const-string/jumbo v16, "poi"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    const-string/jumbo v16, "poi"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 178
    .local v11, "poiIndex":I
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v11}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;->onWayPointFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;I)V

    .line 180
    const-string v16, "actions"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 181
    const-string v16, "actions"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 182
    .local v1, "actionsArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_3

    .line 183
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->parseJsonActionArray(Lorg/json/JSONArray;Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    .end local v1    # "actionsArray":Lorg/json/JSONArray;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 177
    .end local v11    # "poiIndex":I
    :cond_4
    const/4 v11, -0x1

    goto :goto_3

    .line 189
    .end local v4    # "i":I
    .end local v8    # "planData":Lorg/json/JSONObject;
    .end local v13    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    .end local v14    # "wayPointData":Lorg/json/JSONArray;
    .end local v15    # "wpDate":Lorg/json/JSONObject;
    :cond_5
    const/16 v16, 0x1

    .line 196
    .end local v3    # "generalInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
    .end local v7    # "mapInfo":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    :goto_4
    return v16

    .line 190
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 196
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_5
    const/16 v16, 0x0

    goto :goto_4

    .line 194
    :cond_6
    const-string v16, "SavedPlanParser"

    const-string/jumbo v17, "parseJsonFile failed, invalid parameter."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static parseMavlinkFile(Ljava/lang/String;Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;)Z
    .locals 24
    .param p0, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "callBack"    # Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    if-nez p0, :cond_1

    sget-object v11, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->CACHED_MAVLINK_FILE_PATH:Ljava/lang/String;

    .line 201
    .local v11, "mavlinkFilePath":Ljava/lang/String;
    :goto_0
    if-eqz v11, :cond_10

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 202
    const/4 v8, 0x0

    .line 203
    .local v8, "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    const/4 v13, 0x0

    .line 205
    .local v13, "missionItemList":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    :try_start_0
    new-instance v9, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;

    invoke-direct {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/armavlink/ARMavlinkException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    .end local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .local v9, "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    :try_start_1
    invoke-virtual {v9, v11}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->parseFile(Ljava/lang/String;)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;

    move-result-object v13

    .line 207
    invoke-virtual {v13}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->getSize()I

    move-result v21

    if-lez v21, :cond_e

    .line 208
    const/16 v19, 0x0

    .line 209
    .local v19, "speed":I
    sget-object v6, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_ABSOLUTE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    .line 211
    .local v6, "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    const/4 v3, -0x1

    .line 212
    .local v3, "attachedPoiIndex":I
    const/16 v17, 0x0

    .line 214
    .local v17, "poiIndex":I
    invoke-virtual {v13}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->getSize()I

    move-result v18

    .line 215
    .local v18, "size":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_c

    .line 216
    invoke-virtual {v13, v10}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->getMissionItem(I)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v12

    .line 217
    .local v12, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v12}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 219
    invoke-static {v12}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->getMissionItemCommandType(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    move-result-object v5

    .line 220
    .local v5, "commandEnum":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    sget-object v21, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser$1;->$SwitchMap$com$parrot$freeflight$flightplan$mavlink$MavlinkCommand:[I

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->ordinal()I

    move-result v22

    aget v21, v21, v22
    :try_end_1
    .catch Lcom/parrot/arsdk/armavlink/ARMavlinkException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v21, :pswitch_data_0

    .line 215
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 200
    .end local v3    # "attachedPoiIndex":I
    .end local v5    # "commandEnum":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .end local v6    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .end local v9    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .end local v10    # "i":I
    .end local v11    # "mavlinkFilePath":Ljava/lang/String;
    .end local v12    # "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .end local v13    # "missionItemList":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    .end local v17    # "poiIndex":I
    .end local v18    # "size":I
    .end local v19    # "speed":I
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->getSavedPlanMavlinkFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 222
    .restart local v3    # "attachedPoiIndex":I
    .restart local v5    # "commandEnum":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .restart local v6    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .restart local v9    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .restart local v10    # "i":I
    .restart local v11    # "mavlinkFilePath":Ljava/lang/String;
    .restart local v12    # "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .restart local v13    # "missionItemList":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    .restart local v17    # "poiIndex":I
    .restart local v18    # "size":I
    .restart local v19    # "speed":I
    :pswitch_0
    :try_start_2
    sget-object v21, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->FLIGHTPLAN_POI_COLORS:[I

    sget-object v22, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->FLIGHTPLAN_POI_COLORS:[I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    rem-int v22, v17, v22

    aget v4, v21, v22

    .line 223
    .local v4, "color":I
    new-instance v16, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-direct/range {v16 .. v16}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;-><init>()V

    .line 224
    .local v16, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V

    .line 225
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->setColor(I)V

    .line 226
    add-int/lit8 v17, v17, 0x1

    .line 227
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;->onPoiFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V
    :try_end_2
    .catch Lcom/parrot/arsdk/armavlink/ARMavlinkException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 284
    .end local v3    # "attachedPoiIndex":I
    .end local v4    # "color":I
    .end local v5    # "commandEnum":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .end local v6    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .end local v10    # "i":I
    .end local v12    # "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .end local v16    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .end local v17    # "poiIndex":I
    .end local v18    # "size":I
    .end local v19    # "speed":I
    :catch_0
    move-exception v7

    move-object v8, v9

    .line 285
    .end local v9    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .local v7, "e":Lcom/parrot/arsdk/armavlink/ARMavlinkException;
    .restart local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    :goto_3
    :try_start_3
    const-string v21, "SavedPlanParser"

    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    if-eqz v8, :cond_2

    .line 288
    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->dispose()V

    .line 290
    :cond_2
    if-eqz v13, :cond_3

    .line 291
    invoke-virtual {v13}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->dispose()V

    .line 297
    .end local v7    # "e":Lcom/parrot/arsdk/armavlink/ARMavlinkException;
    .end local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .end local v13    # "missionItemList":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    :cond_3
    :goto_4
    const/16 v21, 0x0

    :cond_4
    :goto_5
    return v21

    .line 230
    .restart local v3    # "attachedPoiIndex":I
    .restart local v5    # "commandEnum":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .restart local v6    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .restart local v9    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .restart local v10    # "i":I
    .restart local v12    # "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .restart local v13    # "missionItemList":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    .restart local v17    # "poiIndex":I
    .restart local v18    # "size":I
    .restart local v19    # "speed":I
    :pswitch_1
    :try_start_4
    invoke-static {}, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->values()[Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    move-result-object v21

    invoke-virtual {v12}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam1()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aget-object v6, v21, v22

    .line 231
    sget-object v21, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_ROI:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    move-object/from16 v0, v21

    if-ne v6, v0, :cond_7

    invoke-virtual {v12}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam2()F

    move-result v21

    move/from16 v0, v21

    float-to-int v3, v0

    .line 232
    :goto_6
    const-string v21, "SavedPlanParser"

    const-string v22, "Why we have Set ViewMode Command here, mavlink file isn\'t well created !"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/parrot/arsdk/armavlink/ARMavlinkException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 287
    .end local v3    # "attachedPoiIndex":I
    .end local v5    # "commandEnum":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .end local v6    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .end local v10    # "i":I
    .end local v12    # "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .end local v17    # "poiIndex":I
    .end local v18    # "size":I
    .end local v19    # "speed":I
    :catchall_0
    move-exception v21

    move-object v8, v9

    .end local v9    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .restart local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    :goto_7
    if-eqz v8, :cond_5

    .line 288
    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->dispose()V

    .line 290
    :cond_5
    if-eqz v13, :cond_6

    .line 291
    invoke-virtual {v13}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->dispose()V

    :cond_6
    throw v21

    .line 231
    .end local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .restart local v3    # "attachedPoiIndex":I
    .restart local v5    # "commandEnum":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .restart local v6    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .restart local v9    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .restart local v10    # "i":I
    .restart local v12    # "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .restart local v17    # "poiIndex":I
    .restart local v18    # "size":I
    .restart local v19    # "speed":I
    :cond_7
    const/4 v3, -0x1

    goto :goto_6

    .line 235
    :pswitch_2
    :try_start_5
    invoke-virtual {v12}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam2()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 236
    goto/16 :goto_2

    .line 239
    :pswitch_3
    new-instance v20, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    invoke-direct/range {v20 .. v20}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;-><init>()V

    .line 240
    .local v20, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V

    .line 241
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setSpeed(I)V

    .line 244
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 245
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->getMissionItem(I)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v14

    .line 246
    .local v14, "nextMissionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-static {v14}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->getMissionItemCommandType(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    move-result-object v21

    sget-object v22, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;->MAV_CMD_SET_VIEW_MODE:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 247
    invoke-virtual {v14}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 248
    invoke-static {}, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->values()[Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    move-result-object v21

    invoke-virtual {v14}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam1()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aget-object v6, v21, v22

    .line 249
    sget-object v21, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_ROI:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    move-object/from16 v0, v21

    if-ne v6, v0, :cond_a

    invoke-virtual {v14}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam2()F

    move-result v21

    move/from16 v0, v21

    float-to-int v3, v0

    .line 251
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 255
    .end local v14    # "nextMissionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    :cond_8
    sget-object v21, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->VIEW_MODE_TYPE_CONTINUE:Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;

    move-object/from16 v0, v21

    if-ne v6, v0, :cond_9

    .line 256
    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->setContinueMode(Z)V

    .line 258
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v3}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;->onWayPointFound(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;I)V

    goto/16 :goto_2

    .line 249
    .restart local v14    # "nextMissionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    :cond_a
    const/4 v3, -0x1

    goto :goto_8

    .line 267
    .end local v14    # "nextMissionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .end local v20    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :pswitch_4
    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/model/FlightPlanActionFactory;->createAction(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    move-result-object v2

    .line 268
    .local v2, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v2, v12}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;->initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V

    .line 270
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;->onActionFound(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    goto/16 :goto_2

    .line 274
    .end local v2    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :pswitch_5
    invoke-virtual {v12}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam3()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_b

    new-instance v15, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;

    invoke-direct {v15}, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;-><init>()V

    .line 275
    .local v15, "panoramaTiltAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :goto_9
    invoke-virtual {v15, v12}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;->initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V

    .line 276
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/parrot/freeflight/flightplan/model/ISavedPlanParseCallBack;->onActionFound(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)V

    goto/16 :goto_2

    .line 274
    .end local v15    # "panoramaTiltAction":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    :cond_b
    new-instance v15, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    invoke-direct {v15}, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;-><init>()V
    :try_end_5
    .catch Lcom/parrot/arsdk/armavlink/ARMavlinkException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    .line 282
    .end local v5    # "commandEnum":Lcom/parrot/freeflight/flightplan/mavlink/MavlinkCommand;
    .end local v12    # "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    :cond_c
    const/16 v21, 0x1

    .line 287
    if-eqz v9, :cond_d

    .line 288
    invoke-virtual {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->dispose()V

    .line 290
    :cond_d
    if-eqz v13, :cond_4

    .line 291
    invoke-virtual {v13}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->dispose()V

    goto/16 :goto_5

    .line 287
    .end local v3    # "attachedPoiIndex":I
    .end local v6    # "currentViewMode":Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .end local v10    # "i":I
    .end local v17    # "poiIndex":I
    .end local v18    # "size":I
    .end local v19    # "speed":I
    :cond_e
    if-eqz v9, :cond_f

    .line 288
    invoke-virtual {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;->dispose()V

    .line 290
    :cond_f
    if-eqz v13, :cond_11

    .line 291
    invoke-virtual {v13}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;->dispose()V

    move-object v8, v9

    .end local v9    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .restart local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    goto/16 :goto_4

    .line 295
    .end local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .end local v13    # "missionItemList":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    :cond_10
    const-string v21, "SavedPlanParser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Mavlink File not exist : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 287
    .restart local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .restart local v13    # "missionItemList":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItemList;
    :catchall_1
    move-exception v21

    goto/16 :goto_7

    .line 284
    :catch_1
    move-exception v7

    goto/16 :goto_3

    .end local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .restart local v9    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    :cond_11
    move-object v8, v9

    .end local v9    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    .restart local v8    # "fileParser":Lcom/parrot/arsdk/armavlink/ARMavlinkFileParser;
    goto/16 :goto_4

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
