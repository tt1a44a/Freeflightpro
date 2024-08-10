.class public Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MyParrotLoginActivity.java"


# static fields
.field private static final CLIENT_ID_KEY:Ljava/lang/String; = "cid"

.field private static final CLIENT_ID_VALUE:Ljava/lang/String; = "1001"

.field private static final COUNTRY_KEY:Ljava/lang/String; = "system_country"

.field private static final EMAIL_KEY:Ljava/lang/String; = "email"

.field private static final FIRST_NAME_KEY:Ljava/lang/String; = "name"

.field private static final LAST_NAME_KEY:Ljava/lang/String; = "lastname"

.field private static final LOCALE_KEY:Ljava/lang/String; = "l"

.field private static final LOGIN_PATH:Ljava/lang/String; = "V4/login"

.field private static final LOGIN_RETURN_SCHEME:Ljava/lang/String; = "com.parrot.freeflight3"

.field private static final PERSONAL_DATA_KEY:Ljava/lang/String; = "personalData"

.field private static final PUBLIC_NAME_KEY:Ljava/lang/String; = "publicName"

.field private static final RETURN_CODE_INVALID:I = -0x1

.field private static final RETURN_CODE_INVALID_TOKEN:I = 0x2

.field private static final RETURN_CODE_KEY:Ljava/lang/String; = "ret"

.field private static final RETURN_CODE_OK:I = 0x1

.field private static final SERVER_AUTHORITY:Ljava/lang/String;

.field private static final SERVER_SCHEME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MyParrotLoginActivity"

.field private static final TOKEN_KEY:Ljava/lang/String; = "token"


# instance fields
.field private mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

.field private mFinishOnNextResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->getMyParrotBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->SERVER_SCHEME:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->getMyParrotBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->SERVER_AUTHORITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private onLoginResult(Landroid/net/Uri;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 107
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v3, -0x1

    .line 113
    .local v3, "returnCode":I
    :try_start_0
    const-string v6, "ret"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 114
    const-string v6, "MyParrotLoginActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLoginResult: return code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 155
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->finish()V

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "MyParrotLoginActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLoginResult: invalid return code - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_0
    const-string v6, "token"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "token":Ljava/lang/String;
    new-instance v5, Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    const-string v6, "publicName"

    .line 124
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "name"

    .line 125
    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lastname"

    .line 126
    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "email"

    .line 127
    invoke-virtual {p1, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v6, v9, v10, v11}, Lcom/parrot/freeflight/core/authentication/model/UserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v5, "userProfile":Lcom/parrot/freeflight/core/authentication/model/UserProfile;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->saveUserIdentity(Ljava/lang/String;Lcom/parrot/freeflight/core/authentication/model/UserProfile;)V

    .line 132
    const-string v6, "personalData"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "personalDataStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 134
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-class v9, Lcom/parrot/freeflight/core/authentication/model/PersonalData;

    invoke-virtual {v6, v2, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/authentication/model/PersonalData;

    .line 135
    .local v1, "personalData":Lcom/parrot/freeflight/core/authentication/model/PersonalData;
    if-eqz v1, :cond_1

    .line 136
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v9

    iget v6, v1, Lcom/parrot/freeflight/core/authentication/model/PersonalData;->synchronizeFlightData:I

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->savePersonalDataSharing(Z)V

    .line 139
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v6

    iget v9, v1, Lcom/parrot/freeflight/core/authentication/model/PersonalData;->newsletterSubscription:I

    if-ne v9, v7, :cond_3

    :goto_3
    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->savePersonalDataNewsletters(Z)V

    .line 145
    .end local v1    # "personalData":Lcom/parrot/freeflight/core/authentication/model/PersonalData;
    :cond_1
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->finish()V

    goto/16 :goto_0

    .restart local v1    # "personalData":Lcom/parrot/freeflight/core/authentication/model/PersonalData;
    :cond_2
    move v6, v8

    .line 136
    goto :goto_2

    :cond_3
    move v7, v8

    .line 139
    goto :goto_3

    .line 149
    .end local v1    # "personalData":Lcom/parrot/freeflight/core/authentication/model/PersonalData;
    .end local v2    # "personalDataStr":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "userProfile":Lcom/parrot/freeflight/core/authentication/model/UserProfile;
    :pswitch_1
    iput-boolean v8, p0, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->mFinishOnNextResume:Z

    .line 150
    iget-object v6, p0, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->disconnect()V

    .line 151
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->startLogin()V

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 54
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->mAuthenticationManager:Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    .line 56
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    const-string v2, "com.parrot.freeflight3"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->finish()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->startLogin()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->onLoginResult(Landroid/net/Uri;)V

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 79
    iget-boolean v0, p0, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->mFinishOnNextResume:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->finish()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->mFinishOnNextResume:Z

    goto :goto_0
.end method

.method public startLogin()V
    .locals 7

    .prologue
    .line 88
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v4, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->SERVER_SCHEME:Ljava/lang/String;

    .line 89
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->SERVER_AUTHORITY:Ljava/lang/String;

    .line 90
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "V4/login"

    .line 91
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "l"

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "system_country"

    .line 94
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroid/support/v4/os/LocaleListCompat;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "cid"

    const-string v5, "1001"

    .line 95
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 98
    .local v2, "uriBuilder":Landroid/net/Uri$Builder;
    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 99
    .local v0, "builder":Landroid/support/customtabs/CustomTabsIntent$Builder;
    const v3, 0x7f0500d1

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroid/support/customtabs/CustomTabsIntent$Builder;

    .line 100
    const v3, 0x7f010017

    const v4, 0x7f010018

    invoke-virtual {v0, p0, v3, v4}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setStartAnimations(Landroid/content/Context;II)Landroid/support/customtabs/CustomTabsIntent$Builder;

    .line 101
    const v3, 0x10a0002

    const v4, 0x10a0003

    invoke-virtual {v0, p0, v3, v4}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setExitAnimations(Landroid/content/Context;II)Landroid/support/customtabs/CustomTabsIntent$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v1

    .line 103
    .local v1, "customTabsIntent":Landroid/support/customtabs/CustomTabsIntent;
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 104
    return-void
.end method
