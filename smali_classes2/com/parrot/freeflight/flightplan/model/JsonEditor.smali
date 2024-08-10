.class public Lcom/parrot/freeflight/flightplan/model/JsonEditor;
.super Ljava/lang/Object;
.source "JsonEditor.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/ISavedPlanEditor;


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonEditor"


# instance fields
.field private final mJsonData:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUuid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWayPointJson:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mUuid:Ljava/lang/String;

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mJsonData:Lorg/json/JSONObject;

    .line 39
    return-void
.end method

.method private getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mJsonData:Lorg/json/JSONObject;

    const-string v2, "plan"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mJsonData:Lorg/json/JSONObject;

    const-string v2, "plan"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 147
    .local v0, "planData":Lorg/json/JSONObject;
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    return-object v1

    .line 143
    .end local v0    # "planData":Lorg/json/JSONObject;
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .restart local v0    # "planData":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mJsonData:Lorg/json/JSONObject;

    const-string v2, "plan"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .param p1, "jsonData"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 159
    .local v0, "jsonArray":Lorg/json/JSONArray;
    :goto_0
    return-object v0

    .line 156
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 157
    .restart local v0    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public commit()V
    .locals 7

    .prologue
    .line 103
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mJsonData:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 105
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mUuid:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 107
    sget-object v1, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->CACHED_JSON_FILE_PATH:Ljava/lang/String;

    .line 115
    .local v1, "jsonFilePath":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 118
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mJsonData:Lorg/json/JSONObject;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    if-eqz v4, :cond_5

    .line 126
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 135
    .end local v1    # "jsonFilePath":Ljava/lang/String;
    .end local v4    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->SAVEPLAN_LIST_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "mavlinkFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mUuid:Ljava/lang/String;

    invoke-static {v5}, Lcom/parrot/freeflight/flightplan/model/SavedPlanParser;->getSavedPlanJsonFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "jsonFilePath":Ljava/lang/String;
    goto :goto_0

    .line 127
    .end local v2    # "mavlinkFolder":Ljava/io/File;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 129
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_1

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    :goto_2
    move-object v0, v5

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    if-eqz v3, :cond_0

    .line 126
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 127
    :catch_2
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_3

    .line 126
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 129
    :cond_3
    :goto_5
    throw v5

    .line 127
    :catch_3
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "jsonFilePath":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/FileWriter;
    :cond_4
    const-string v5, "JsonEditor"

    const-string v6, "Nothing to save"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    .restart local v1    # "jsonFilePath":Ljava/lang/String;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v5

    :goto_6
    move-object v0, v5

    goto :goto_3

    .line 124
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_4

    .line 121
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_6

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :cond_5
    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public saveActions(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;>;"
    :try_start_0
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mWayPointJson:Lorg/json/JSONObject;

    if-nez v4, :cond_1

    const-string v4, "takeoff"

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 91
    .local v2, "jsonArray":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;

    .line 92
    .local v0, "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;->saveToJsonObject(Lorg/json/JSONObject;)V

    .line 94
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void

    .line 90
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mWayPointJson:Lorg/json/JSONObject;

    const-string v5, "actions"

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public saveGeneralInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;)V
    .locals 2
    .param p1, "generalInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mJsonData:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanGeneralInfo;->saveToJsonObject(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public saveMapInfo(Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;)V
    .locals 2
    .param p1, "mapInfo"    # Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mJsonData:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->saveToJsonObject(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public savePois(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "poiList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;>;"
    :try_start_0
    const-string v4, "poi"

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 63
    .local v2, "poiArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    .line 64
    .local v1, "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v3, "poiData":Lorg/json/JSONObject;
    invoke-virtual {v1, v3}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->saveToJsonObject(Lorg/json/JSONObject;)V

    .line 66
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v1    # "poi":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
    .end local v2    # "poiArray":Lorg/json/JSONArray;
    .end local v3    # "poiData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method public saveWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V
    .locals 4
    .param p1, "wayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nextWayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    :try_start_0
    const-string v3, "wayPoints"

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 78
    .local v1, "wayPointArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v2, "wayPointData":Lorg/json/JSONObject;
    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->saveToJsonObject(Lorg/json/JSONObject;)V

    .line 80
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    iput-object v2, p0, Lcom/parrot/freeflight/flightplan/model/JsonEditor;->mWayPointJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "wayPointArray":Lorg/json/JSONArray;
    .end local v2    # "wayPointData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
