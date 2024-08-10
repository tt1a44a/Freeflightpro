.class Ljonathanfinerty/once/PersistedSet;
.super Ljava/lang/Object;
.source "PersistedSet.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final STRING_SET_KEY:Ljava/lang/String; = "PersistedSetValues"


# instance fields
.field private final preferenceLoader:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

.field private preferences:Landroid/content/SharedPreferences;

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    .line 24
    const-string v1, "PersistedSet"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "preferencesName":Ljava/lang/String;
    new-instance v1, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    invoke-direct {v1, p1, v0}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Ljonathanfinerty/once/PersistedSet;->preferenceLoader:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    .line 26
    return-void
.end method

.method private StringSetToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 83
    .local v0, "loopDelimiter":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, ","

    .line 88
    goto :goto_0

    .line 90
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private StringToStringSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "setString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 99
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 72
    const-string v1, "PersistedSetValues"

    iget-object v2, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 76
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void

    .line 74
    :cond_0
    const-string v1, "PersistedSetValues"

    iget-object v2, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-direct {p0, v2}, Ljonathanfinerty/once/PersistedSet;->StringSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private waitForLoad()V
    .locals 4

    .prologue
    .line 29
    iget-object v1, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 30
    iget-object v1, p0, Ljonathanfinerty/once/PersistedSet;->preferenceLoader:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    invoke-virtual {v1}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->get()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 33
    iget-object v1, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "PersistedSetValues"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "PersistedSetValues"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "setString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {p0, v0}, Ljonathanfinerty/once/PersistedSet;->StringToStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->waitForLoad()V

    .line 64
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->updatePreferences()V

    .line 66
    return-void
.end method

.method contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->waitForLoad()V

    .line 51
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method put(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->waitForLoad()V

    .line 44
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->updatePreferences()V

    .line 46
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->waitForLoad()V

    .line 57
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 58
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->updatePreferences()V

    .line 59
    return-void
.end method
