.class public Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
.super Ljava/lang/Object;
.source "RegistrationPromotion.java"


# static fields
.field private static final REQUEST_ACTIVATED_KEY:Ljava/lang/String; = "discount_code_valid"

.field private static final SERIAL_SUFFIX:Ljava/lang/String; = "_serial"


# instance fields
.field private mActivated:Z

.field private final mId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSerial:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    iput-object p2, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    .locals 3
    .param p0, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 29
    const-class v2, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 30
    .local v0, "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    invoke-direct {v0}, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->loadFromSharedPreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v2

    return-object v0

    .line 29
    .end local v0    # "promotion":Lcom/parrot/freeflight/core/registration/RegistrationPromotion;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private loadFromSharedPreferences()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mActivated:Z

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_serial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mSerial:Ljava/lang/String;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getSerial()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mActivated:Z

    return v0
.end method

.method public load(Landroid/util/JsonReader;Ljava/lang/String;)V
    .locals 2
    .param p1, "reader"    # Landroid/util/JsonReader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 55
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "name":Ljava/lang/String;
    const-string v1, "discount_code_valid"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mActivated:Z

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 64
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mSerial:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 67
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mActivated:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_serial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/registration/RegistrationPromotion;->mSerial:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    return-void
.end method
