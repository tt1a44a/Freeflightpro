.class public Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;
    }
.end annotation


# instance fields
.field private apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

.field private authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->listeners:Ljava/util/Set;

    .line 28
    invoke-static {p1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    .line 29
    new-instance v0, Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    .line 30
    return-void
.end method

.method private savePersonalDataSynchronized(Z)V
    .locals 2
    .param p1, "isSynchronized"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setPersonalDataSynchronized(Ljava/lang/Boolean;)V

    .line 168
    if-nez p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->syncPersonalDataIfNeeded()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->updatePersonalDataLastSync()V

    goto :goto_0
.end method

.method private saveUserProfileSynchronized(Z)V
    .locals 1
    .param p1, "isSynchronized"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setUserProfileSynchronized(Z)V

    .line 159
    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->uploadUserProfile()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->updateUserProfileLastSync()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {p1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;->onAuthenticationChanged()V

    .line 49
    return-void
.end method

.method public areNewslettersAllowed()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getNewsletterAllowed()Z

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->clear()V

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;

    .line 133
    .local v0, "listener":Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;->onAuthenticationChanged()V

    goto :goto_0

    .line 135
    .end local v0    # "listener":Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;
    :cond_0
    return-void
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataSharingAllowed()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getDataSharingAllowed()Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public requestAccountDeletion(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->asyncDeleteAccount(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I

    .line 147
    return-void
.end method

.method public requestFlightDataDeletion(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->asyncDeleteFlightData(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I

    .line 143
    return-void
.end method

.method public requestFlightDataDownload(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->asyncDownloadFlightData(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I

    .line 139
    return-void
.end method

.method public requestUserProfile(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Lcom/parrot/freeflight/core/authentication/model/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Lcom/parrot/freeflight/core/authentication/model/UserProfile;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->asyncGetUserProfile(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I

    .line 151
    return-void
.end method

.method public savePersonalDataNewsletters(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->savePersonalDataNewsletters(ZZ)V

    .line 123
    return-void
.end method

.method public savePersonalDataNewsletters(ZZ)V
    .locals 1
    .param p1, "allowed"    # Z
    .param p2, "isSynchronized"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setNewsletterAllowed(Z)V

    .line 127
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->savePersonalDataSynchronized(Z)V

    .line 128
    return-void
.end method

.method public savePersonalDataSharing(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->savePersonalDataSharing(ZZ)V

    .line 114
    return-void
.end method

.method public savePersonalDataSharing(ZZ)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "isSynchronized"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setDataSharingAllowed(Ljava/lang/Boolean;)V

    .line 118
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->savePersonalDataSynchronized(Z)V

    .line 119
    return-void
.end method

.method public saveUserIdentity(Ljava/lang/String;Lcom/parrot/freeflight/core/authentication/model/UserProfile;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "userProfile"    # Lcom/parrot/freeflight/core/authentication/model/UserProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setToken(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->saveUserProfile(Lcom/parrot/freeflight/core/authentication/model/UserProfile;)V

    .line 92
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;

    .line 93
    .local v0, "listener":Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;->onAuthenticationChanged()V

    goto :goto_0

    .line 96
    .end local v0    # "listener":Lcom/parrot/freeflight/core/authentication/AuthenticationManager$AuthenticationListener;
    :cond_0
    return-void
.end method

.method public saveUserProfile(Lcom/parrot/freeflight/core/authentication/model/UserProfile;)V
    .locals 1
    .param p1, "userProfile"    # Lcom/parrot/freeflight/core/authentication/model/UserProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->saveUserProfile(Lcom/parrot/freeflight/core/authentication/model/UserProfile;Z)V

    .line 100
    return-void
.end method

.method public saveUserProfile(Lcom/parrot/freeflight/core/authentication/model/UserProfile;Z)V
    .locals 2
    .param p1, "userProfile"    # Lcom/parrot/freeflight/core/authentication/model/UserProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isSynchronized"    # Z

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    iget-object v1, p1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setEmail(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    iget-object v1, p1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->publicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setPublicName(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    iget-object v1, p1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setFirstName(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    iget-object v1, p1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setLastName(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->saveUserProfileSynchronized(Z)V

    .line 110
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->start()V

    .line 34
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->apcService:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->stop()V

    .line 38
    return-void
.end method
