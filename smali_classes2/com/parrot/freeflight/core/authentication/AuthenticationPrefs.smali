.class public Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;
.super Ljava/lang/Object;
.source "AuthenticationPrefs.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# static fields
.field private static sAuthenticationPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;


# instance fields
.field private final DATA_CONF_DATA_SHARING_KEY:Ljava/lang/String;

.field private final DATA_CONF_NEWSLETTER_KEY:Ljava/lang/String;

.field private final DEFAULT_DATA_CONF_DATA_SHARING:Z

.field private final DEFAULT_DATA_CONF_NEWSLETTER:Z

.field private final DEFAULT_EMAIL:Ljava/lang/String;

.field private final DEFAULT_LAST_NAME:Ljava/lang/String;

.field private final DEFAULT_NAME:Ljava/lang/String;

.field private final DEFAULT_PERSONAL_DATA_LAST_SYNC:Ljava/lang/Long;

.field private final DEFAULT_PERSONAL_DATA_SYNCHRONIZED:Z

.field private final DEFAULT_PROFILE_LAST_SYNC:Ljava/lang/Long;

.field private final DEFAULT_PUBLIC_NAME:Ljava/lang/String;

.field private final DEFAULT_TOKEN:Ljava/lang/String;

.field private final DEFAULT_USER_PROFILE_SYNCHRONIZED:Z

.field private final EMAIL_KEY:Ljava/lang/String;

.field private final FIRST_NAME_KEY:Ljava/lang/String;

.field private final LAST_NAME_KEY:Ljava/lang/String;

.field private final PERSONAL_DATA_LAST_SYNC_KEY:Ljava/lang/String;

.field private final PERSONAL_DATA_SYNCHRONIZED_KEY:Ljava/lang/String;

.field private final PROFILE_LAST_SYNC_KEY:Ljava/lang/String;

.field private final PUBLIC_NAME_KEY:Ljava/lang/String;

.field private final SHARED_KEY:Ljava/lang/String;

.field private final TOKEN_KEY:Ljava/lang/String;

.field private final USER_PROFILE_SYNCHRONIZED_KEY:Ljava/lang/String;

.field private final mAuthenticationPrefs:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "my_parrot_authentication"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->SHARED_KEY:Ljava/lang/String;

    .line 18
    const-string v0, "token"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->TOKEN_KEY:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_TOKEN:Ljava/lang/String;

    .line 21
    const-string v0, "email"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->EMAIL_KEY:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_EMAIL:Ljava/lang/String;

    .line 24
    const-string v0, "public_name"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->PUBLIC_NAME_KEY:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_PUBLIC_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "first_name"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->FIRST_NAME_KEY:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "last_name"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->LAST_NAME_KEY:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_LAST_NAME:Ljava/lang/String;

    .line 33
    const-string v0, "data_conf_data_sharing"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DATA_CONF_DATA_SHARING_KEY:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_DATA_CONF_DATA_SHARING:Z

    .line 36
    const-string v0, "data_conf_newsletter"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DATA_CONF_NEWSLETTER_KEY:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_DATA_CONF_NEWSLETTER:Z

    .line 39
    const-string v0, "personal_data_synchronized"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->PERSONAL_DATA_SYNCHRONIZED_KEY:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_PERSONAL_DATA_SYNCHRONIZED:Z

    .line 42
    const-string v0, "personal_data_last_sync"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->PERSONAL_DATA_LAST_SYNC_KEY:Ljava/lang/String;

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_PERSONAL_DATA_LAST_SYNC:Ljava/lang/Long;

    .line 45
    const-string v0, "user_profile_synchronized"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->USER_PROFILE_SYNCHRONIZED_KEY:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_USER_PROFILE_SYNCHRONIZED:Z

    .line 48
    const-string v0, "profile_last_sync"

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->PROFILE_LAST_SYNC_KEY:Ljava/lang/String;

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_PROFILE_LAST_SYNC:Ljava/lang/Long;

    .line 69
    const-string v0, "my_parrot_authentication"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    .line 70
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    sget-object v0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->sAuthenticationPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->sAuthenticationPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    .line 65
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->sAuthenticationPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    return-void
.end method

.method public getDataSharingAllowed()Z
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v1, "data_conf_data_sharing"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v1, "email"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v1, "first_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewsletterAllowed()Z
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v1, "data_conf_newsletter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPersonalData()Lcom/parrot/freeflight/core/authentication/model/PersonalData;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/parrot/freeflight/core/authentication/model/PersonalData;

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getDataSharingAllowed()Z

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getNewsletterAllowed()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/authentication/model/PersonalData;-><init>(ZZ)V

    return-object v0
.end method

.method public getPersonalDataLastSync()Ljava/util/Date;
    .locals 6

    .prologue
    .line 170
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v2, "personal_data_last_sync"

    iget-object v3, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_PERSONAL_DATA_LAST_SYNC:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPersonalDataSynchronized()Z
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v1, "personal_data_synchronized"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPublicName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v1, "public_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;
    .locals 5

    .prologue
    .line 205
    new-instance v0, Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getPublicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/core/authentication/model/UserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserProfileLastSync()Ljava/util/Date;
    .locals 6

    .prologue
    .line 190
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v2, "profile_last_sync"

    iget-object v3, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->DEFAULT_PROFILE_LAST_SYNC:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getUserProfileSynchronized()Z
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    const-string v1, "user_profile_synchronized"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public setDataSharingAllowed(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "allowed"    # Ljava/lang/Boolean;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_conf_data_sharing"

    .line 145
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "email"

    .line 105
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_name"

    .line 125
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 2
    .param p1, "lastName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_name"

    .line 135
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method public setNewsletterAllowed(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_conf_newsletter"

    .line 155
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    return-void
.end method

.method public setPersonalDataSynchronized(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isSynchronized"    # Ljava/lang/Boolean;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "personal_data_synchronized"

    .line 165
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return-void
.end method

.method public setPublicName(Ljava/lang/String;)V
    .locals 2
    .param p1, "publicName"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "public_name"

    .line 115
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token"

    .line 95
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    return-void
.end method

.method public setUserProfileSynchronized(Z)V
    .locals 2
    .param p1, "isSynchronized"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_profile_synchronized"

    .line 185
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    return-void
.end method

.method public updatePersonalDataLastSync()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "personal_data_last_sync"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 175
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    return-void
.end method

.method public updateUserProfileLastSync()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->mAuthenticationPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profile_last_sync"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 195
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    return-void
.end method
