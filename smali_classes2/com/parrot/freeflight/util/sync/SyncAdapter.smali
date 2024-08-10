.class public Lcom/parrot/freeflight/util/sync/SyncAdapter;
.super Lcom/parrot/freeflight/utils/GenericSyncAdapter;
.source "SyncAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncAdapter"

.field private static final UPDATE_RETRY_DELAY:I = 0x5460


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/utils/GenericSyncAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public static startSync(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 45
    const v4, 0x7f110604

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "providerAuthority":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/util/sync/StubSyncAuthenticator;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 47
    .local v0, "account":Landroid/accounts/Account;
    const-string v4, "account"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 48
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v1, v0, v6, v6}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 49
    invoke-static {v0, v2, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 51
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v3, "settingsBundle":Landroid/os/Bundle;
    const-string v4, "force"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    const-string v4, "expedited"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "contentProviderClient"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 28
    const-string v3, "SyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPerformSync : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/parrot/freeflight/util/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    .line 31
    .local v1, "syncOk":Z
    iget-object v3, p0, Lcom/parrot/freeflight/util/sync/SyncAdapter;->mSyncables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/util/sync/ISyncable;

    .line 32
    .local v2, "syncable":Lcom/parrot/freeflight/util/sync/ISyncable;
    invoke-interface {v2, v0}, Lcom/parrot/freeflight/util/sync/ISyncable;->onPerformSync(Landroid/content/Context;)Z

    move-result v4

    and-int/2addr v1, v4

    .line 33
    goto :goto_0

    .line 37
    .end local v2    # "syncable":Lcom/parrot/freeflight/util/sync/ISyncable;
    :cond_0
    if-eqz v1, :cond_1

    .line 38
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {p1, p3, v3}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    :goto_1
    return-void

    .line 40
    :cond_1
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-wide/16 v4, 0x5460

    invoke-static {p1, p3, v3, v4, v5}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_1
.end method
