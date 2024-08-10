.class public Ljonathanfinerty/once/Once;
.super Ljava/lang/Object;
.source "Once.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljonathanfinerty/once/Once$Scope;
    }
.end annotation


# static fields
.field public static final THIS_APP_INSTALL:I = 0x0

.field public static final THIS_APP_SESSION:I = 0x2

.field public static final THIS_APP_VERSION:I = 0x1

.field private static lastAppUpdatedTime:J

.field private static sessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

.field private static toDoSet:Ljonathanfinerty/once/PersistedSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, -0x1

    sput-wide v0, Ljonathanfinerty/once/Once;->lastAppUpdatedTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static beenDone(ILjava/lang/String;)Z
    .locals 1
    .param p0, "scope"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Ljonathanfinerty/once/Amount;->moreThan(I)Ljonathanfinerty/once/CountChecker;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljonathanfinerty/once/Once;->beenDone(ILjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v0

    return v0
.end method

.method public static beenDone(ILjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z
    .locals 10
    .param p0, "scope"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "numberOfTimes"    # Ljonathanfinerty/once/CountChecker;

    .prologue
    .line 162
    sget-object v4, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v4, p1}, Ljonathanfinerty/once/PersistedMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 164
    .local v3, "tagSeenDates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const/4 v4, 0x0

    .line 187
    :goto_0
    return v4

    .line 169
    :cond_0
    if-nez p0, :cond_1

    .line 170
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2, v4}, Ljonathanfinerty/once/CountChecker;->check(I)Z

    move-result v4

    goto :goto_0

    .line 171
    :cond_1
    const/4 v4, 0x2

    if-ne p0, v4, :cond_4

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "counter":I
    sget-object v4, Ljonathanfinerty/once/Once;->sessionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, "tagFromList":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    .end local v2    # "tagFromList":Ljava/lang/String;
    :cond_3
    invoke-interface {p2, v0}, Ljonathanfinerty/once/CountChecker;->check(I)Z

    move-result v4

    goto :goto_0

    .line 180
    .end local v0    # "counter":I
    :cond_4
    const/4 v0, 0x0

    .line 181
    .restart local v0    # "counter":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 182
    .local v1, "seenDate":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-wide v8, Ljonathanfinerty/once/Once;->lastAppUpdatedTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    .end local v1    # "seenDate":Ljava/lang/Long;
    :cond_6
    invoke-interface {p2, v0}, Ljonathanfinerty/once/CountChecker;->check(I)Z

    move-result v4

    goto :goto_0
.end method

.method public static beenDone(JLjava/lang/String;)Z
    .locals 2
    .param p0, "timeSpanInMillis"    # J
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {v0}, Ljonathanfinerty/once/Amount;->moreThan(I)Ljonathanfinerty/once/CountChecker;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljonathanfinerty/once/Once;->beenDone(JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v0

    return v0
.end method

.method public static beenDone(JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z
    .locals 8
    .param p0, "timeSpanInMillis"    # J
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "numberOfTimes"    # Ljonathanfinerty/once/CountChecker;

    .prologue
    .line 244
    sget-object v5, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v5, p2}, Ljonathanfinerty/once/PersistedMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 246
    .local v4, "tagSeenDates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    const/4 v5, 0x0

    .line 258
    :goto_0
    return v5

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 251
    .local v0, "counter":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 252
    .local v1, "seenDate":Ljava/lang/Long;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v6, p0

    .line 253
    .local v2, "sinceSinceCheckTime":J
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_1

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    .end local v1    # "seenDate":Ljava/lang/Long;
    .end local v2    # "sinceSinceCheckTime":J
    :cond_2
    invoke-interface {p3, v0}, Ljonathanfinerty/once/CountChecker;->check(I)Z

    move-result v5

    goto :goto_0
.end method

.method public static beenDone(Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-static {v1}, Ljonathanfinerty/once/Amount;->moreThan(I)Ljonathanfinerty/once/CountChecker;

    move-result-object v0

    invoke-static {v1, p0, v0}, Ljonathanfinerty/once/Once;->beenDone(ILjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v0

    return v0
.end method

.method public static beenDone(Ljava/lang/String;Ljonathanfinerty/once/CountChecker;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "numberOfTimes"    # Ljonathanfinerty/once/CountChecker;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljonathanfinerty/once/Once;->beenDone(ILjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v0

    return v0
.end method

.method public static beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;)Z
    .locals 1
    .param p0, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p1, "amount"    # J
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {v0}, Ljonathanfinerty/once/Amount;->moreThan(I)Ljonathanfinerty/once/CountChecker;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Ljonathanfinerty/once/Once;->beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v0

    return v0
.end method

.method public static beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z
    .locals 3
    .param p0, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p1, "amount"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "numberOfTimes"    # Ljonathanfinerty/once/CountChecker;

    .prologue
    .line 215
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 216
    .local v0, "timeInMillis":J
    invoke-static {v0, v1, p3, p4}, Ljonathanfinerty/once/Once;->beenDone(JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result v2

    return v2
.end method

.method public static clearAll()V
    .locals 1

    .prologue
    .line 299
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v0}, Ljonathanfinerty/once/PersistedMap;->clear()V

    .line 300
    sget-object v0, Ljonathanfinerty/once/Once;->sessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    return-void
.end method

.method public static clearAllToDos()V
    .locals 1

    .prologue
    .line 308
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0}, Ljonathanfinerty/once/PersistedSet;->clear()V

    .line 309
    return-void
.end method

.method public static clearDone(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 280
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedMap;->remove(Ljava/lang/String;)V

    .line 281
    sget-object v0, Ljonathanfinerty/once/Once;->sessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method public static clearToDo(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 291
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedSet;->remove(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public static initialise(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v2, Ljonathanfinerty/once/PersistedMap;

    const-string v3, "TagLastSeenMap"

    invoke-direct {v2, p0, v3}, Ljonathanfinerty/once/PersistedMap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    .line 42
    new-instance v2, Ljonathanfinerty/once/PersistedSet;

    const-string v3, "ToDoSet"

    invoke-direct {v2, p0, v3}, Ljonathanfinerty/once/PersistedSet;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    .line 44
    sget-object v2, Ljonathanfinerty/once/Once;->sessionList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Ljonathanfinerty/once/Once;->sessionList:Ljava/util/ArrayList;

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 50
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 51
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v2, Ljonathanfinerty/once/Once;->lastAppUpdatedTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static lastDone(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 101
    sget-object v1, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v1, p0}, Ljonathanfinerty/once/PersistedMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "lastSeenTimeStamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 106
    :goto_0
    return-object v1

    .line 105
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 106
    .local v2, "lastTimestamp":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static markDone(Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 268
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Ljonathanfinerty/once/PersistedMap;->put(Ljava/lang/String;J)V

    .line 269
    sget-object v0, Ljonathanfinerty/once/Once;->sessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedSet;->remove(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static needToDo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedSet;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static toDo(ILjava/lang/String;)V
    .locals 6
    .param p0, "scope"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v2, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v2, p1}, Ljonathanfinerty/once/PersistedMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, "tagSeenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    sget-object v2, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v2, p1}, Ljonathanfinerty/once/PersistedSet;->put(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 75
    .local v0, "tagLastSeen":Ljava/lang/Long;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Ljonathanfinerty/once/Once;->lastAppUpdatedTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 76
    sget-object v2, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v2, p1}, Ljonathanfinerty/once/PersistedSet;->put(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toDo(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedSet;->put(Ljava/lang/String;)V

    .line 87
    return-void
.end method
