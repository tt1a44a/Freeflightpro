.class Ljonathanfinerty/once/PersistedMap;
.super Ljava/lang/Object;
.source "PersistedMap.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final preferenceLoader:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Ljonathanfinerty/once/PersistedMap;->map:Ljava/util/Map;

    .line 22
    const-string v1, "PersistedMap"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "preferencesName":Ljava/lang/String;
    new-instance v1, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    invoke-direct {v1, p1, v0}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Ljonathanfinerty/once/PersistedMap;->preferenceLoader:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    .line 24
    return-void
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 105
    .local v1, "loopDelimiter":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 106
    .local v0, "l":Ljava/lang/Long;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ","

    .line 110
    goto :goto_0

    .line 112
    .end local v0    # "l":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private loadFromLegacyStorageFormat(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v3, p0, Ljonathanfinerty/once/PersistedMap;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v4, -0x1

    invoke-interface {v3, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 49
    .local v0, "value":J
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v3, p0, Ljonathanfinerty/once/PersistedMap;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-direct {p0, v2}, Ljonathanfinerty/once/PersistedMap;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-object v2
.end method

.method private stringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "stringList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 127
    :cond_1
    return-object v0

    .line 120
    :cond_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "strings":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 124
    .local v1, "stringLong":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private waitForLoad()V
    .locals 7

    .prologue
    .line 27
    iget-object v4, p0, Ljonathanfinerty/once/PersistedMap;->preferences:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_1

    .line 45
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object v4, p0, Ljonathanfinerty/once/PersistedMap;->preferenceLoader:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    invoke-virtual {v4}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->get()Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Ljonathanfinerty/once/PersistedMap;->preferences:Landroid/content/SharedPreferences;

    .line 32
    iget-object v4, p0, Ljonathanfinerty/once/PersistedMap;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 34
    .local v0, "allPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Ljonathanfinerty/once/PersistedMap;->preferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljonathanfinerty/once/PersistedMap;->stringToList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 43
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    iget-object v5, p0, Ljonathanfinerty/once/PersistedMap;->map:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v1

    .line 40
    .local v1, "exception":Ljava/lang/ClassCastException;
    invoke-direct {p0, v2}, Ljonathanfinerty/once/PersistedMap;->loadFromLegacyStorageFormat(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedMap;->waitForLoad()V

    .line 95
    iget-object v1, p0, Ljonathanfinerty/once/PersistedMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 96
    iget-object v1, p0, Ljonathanfinerty/once/PersistedMap;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method

.method get(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedMap;->waitForLoad()V

    .line 61
    iget-object v1, p0, Ljonathanfinerty/once/PersistedMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 62
    .local v0, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 65
    .end local v0    # "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    return-object v0
.end method

.method put(Ljava/lang/String;J)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "timeSeen"    # J

    .prologue
    .line 69
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedMap;->waitForLoad()V

    .line 71
    iget-object v2, p0, Ljonathanfinerty/once/PersistedMap;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 72
    .local v1, "lastSeenTimeStamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "lastSeenTimeStamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .restart local v1    # "lastSeenTimeStamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v2, p0, Ljonathanfinerty/once/PersistedMap;->map:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v2, p0, Ljonathanfinerty/once/PersistedMap;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v1}, Ljonathanfinerty/once/PersistedMap;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedMap;->waitForLoad()V

    .line 86
    iget-object v1, p0, Ljonathanfinerty/once/PersistedMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Ljonathanfinerty/once/PersistedMap;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    return-void
.end method
