.class public Lcom/parrot/freeflight/core/authentication/client/ApcService;
.super Ljava/lang/Object;
.source "ApcService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;
    }
.end annotation


# instance fields
.field private apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

.field private authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

.field private dateFormat:Ljava/text/DateFormat;

.field private lastCallId:I

.field private mContext:Landroid/content/Context;

.field private mInternetAvailable:Z

.field private final mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPendingCalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lretrofit2/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/SimpleDateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->dateFormat:Ljava/text/DateFormat;

    .line 49
    invoke-static {}, Lcom/parrot/freeflight/core/authentication/client/ApcModule;->getApcAPI()Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    .line 51
    iput v2, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->lastCallId:I

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mPendingCalls:Landroid/util/SparseArray;

    .line 55
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mInternetAvailable:Z

    .line 61
    new-instance v0, Lcom/parrot/freeflight/core/authentication/client/ApcService$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/authentication/client/ApcService$1;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    .line 78
    iput-object p1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/core/authentication/client/ApcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/authentication/client/ApcService;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mInternetAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lretrofit2/Call;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/authentication/client/ApcService;
    .param p1, "x1"    # Lretrofit2/Call;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->removePendingCall(Lretrofit2/Call;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/authentication/client/ApcService;)Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/authentication/client/ApcService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    return-object v0
.end method

.method private addPendingCall(Lretrofit2/Call;)I
    .locals 3
    .param p1, "pendingCall"    # Lretrofit2/Call;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mPendingCalls:Landroid/util/SparseArray;

    iget v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->lastCallId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->lastCallId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    iget v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->lastCallId:I

    return v0
.end method

.method private buildWsAuthString(Ljava/util/Map;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 356
    const-string v6, ""

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "strToHash":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "currentTime":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    const-string v2, "qnJ-sYQ0[xf=.tek=0.8hCTTOL3Ass"

    .line 362
    .local v2, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v10, v7}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    const/4 v3, 0x0

    .line 366
    .local v3, "messageDigest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 370
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v10, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .local v5, "token":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v7, 0x20

    if-ge v6, v7, :cond_0

    .line 375
    const-string v6, "0"

    invoke-virtual {v5, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 367
    .end local v5    # "token":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "token":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method private removePendingCall(Lretrofit2/Call;)I
    .locals 2
    .param p1, "pendingCall"    # Lretrofit2/Call;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 108
    .local v0, "requestId":I
    if-ltz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 111
    :cond_0
    return v0
.end method

.method private retrievePersonalData()V
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mInternetAvailable:Z

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Lcom/parrot/freeflight/core/authentication/client/ApcService$11;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/authentication/client/ApcService$11;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->asyncGetUserPersonalData(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I

    .line 432
    :cond_0
    return-void
.end method

.method private uploadPersonalData()V
    .locals 2

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mInternetAvailable:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getPersonalData()Lcom/parrot/freeflight/core/authentication/model/PersonalData;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/authentication/client/ApcService$12;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/authentication/client/ApcService$12;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;)V

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->asyncEditUserPersonalData(Lcom/parrot/freeflight/core/authentication/model/PersonalData;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I

    .line 443
    :cond_0
    return-void
.end method


# virtual methods
.method public asyncCheckUserToken(Ljava/lang/String;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
    .locals 6
    .param p1, "apcToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "apcToken"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->buildWsAuthString(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 145
    .local v0, "auth":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, p1, v3, v4}, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;->checkUserToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 146
    .local v2, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v3, Lcom/parrot/freeflight/core/authentication/client/ApcService$2;

    invoke-direct {v3, p0, p2}, Lcom/parrot/freeflight/core/authentication/client/ApcService$2;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 159
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->addPendingCall(Lretrofit2/Call;)I

    move-result v3

    return v3
.end method

.method public asyncDeleteAccount(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->buildWsAuthString(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 334
    .local v0, "auth":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;->deleteAccount(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 335
    .local v2, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v3, Lcom/parrot/freeflight/core/authentication/client/ApcService$9;

    invoke-direct {v3, p0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService$9;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 348
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->addPendingCall(Lretrofit2/Call;)I

    move-result v3

    return v3
.end method

.method public asyncDeleteFlightData(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->buildWsAuthString(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 309
    .local v0, "auth":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;->deleteFlightData(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 310
    .local v2, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v3, Lcom/parrot/freeflight/core/authentication/client/ApcService$8;

    invoke-direct {v3, p0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService$8;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 323
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->addPendingCall(Lretrofit2/Call;)I

    move-result v3

    return v3
.end method

.method public asyncDownloadFlightData(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 282
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->buildWsAuthString(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 284
    .local v0, "auth":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;->downloadFlightData(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 285
    .local v2, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v3, Lcom/parrot/freeflight/core/authentication/client/ApcService$7;

    invoke-direct {v3, p0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService$7;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 298
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->addPendingCall(Lretrofit2/Call;)I

    move-result v3

    return v3
.end method

.method public asyncEditUserPersonalData(Lcom/parrot/freeflight/core/authentication/model/PersonalData;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
    .locals 8
    .param p1, "personalData"    # Lcom/parrot/freeflight/core/authentication/model/PersonalData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/model/PersonalData;",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "personalDataStr":Ljava/lang/String;
    const-string v5, "application/json"

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    invoke-static {v5, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 254
    .local v3, "requestBody":Lokhttp3/RequestBody;
    const-string v5, "personalData"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->buildWsAuthString(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 258
    .local v0, "auth":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7, v3, v5, v6}, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;->editUserPersonalData(Lokhttp3/RequestBody;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v4

    .line 260
    .local v4, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v5, Lcom/parrot/freeflight/core/authentication/client/ApcService$6;

    invoke-direct {v5, p0, p2}, Lcom/parrot/freeflight/core/authentication/client/ApcService$6;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V

    invoke-interface {v4, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 273
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->addPendingCall(Lretrofit2/Call;)I

    move-result v5

    return v5
.end method

.method public asyncEditUserProfile(Lcom/parrot/freeflight/core/authentication/model/UserProfile;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
    .locals 8
    .param p1, "userProfile"    # Lcom/parrot/freeflight/core/authentication/model/UserProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/model/UserProfile;",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Ljava/lang/Void;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "first_name"

    iget-object v4, p1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->firstName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v3, "last_name"

    iget-object v4, p1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->lastName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->buildWsAuthString(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 199
    .local v0, "auth":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    iget-object v6, p1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->firstName:Ljava/lang/String;

    iget-object v7, p1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->lastName:Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v6, v7, v3, v4}, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;->editUserProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 203
    .local v2, "response":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    new-instance v3, Lcom/parrot/freeflight/core/authentication/client/ApcService$4;

    invoke-direct {v3, p0, p2}, Lcom/parrot/freeflight/core/authentication/client/ApcService$4;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 216
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->addPendingCall(Lretrofit2/Call;)I

    move-result v3

    return v3
.end method

.method public asyncGetUserPersonalData(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Lcom/parrot/freeflight/core/authentication/model/PersonalData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Lcom/parrot/freeflight/core/authentication/model/PersonalData;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->buildWsAuthString(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 226
    .local v0, "auth":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;->getUserPersonalData(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 228
    .local v2, "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/authentication/model/PersonalData;>;"
    new-instance v3, Lcom/parrot/freeflight/core/authentication/client/ApcService$5;

    invoke-direct {v3, p0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService$5;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 242
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->addPendingCall(Lretrofit2/Call;)I

    move-result v3

    return v3
.end method

.method public asyncGetUserProfile(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
            "<",
            "Lcom/parrot/freeflight/core/authentication/model/UserProfile;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "listener":Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;, "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener<Lcom/parrot/freeflight/core/authentication/model/UserProfile;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->buildWsAuthString(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 170
    .local v0, "auth":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->apcAPI:Lcom/parrot/freeflight/core/authentication/client/ApcAPI;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Lcom/parrot/freeflight/core/authentication/client/ApcAPI;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 171
    .local v2, "response":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/authentication/model/UserProfile;>;"
    new-instance v3, Lcom/parrot/freeflight/core/authentication/client/ApcService$3;

    invoke-direct {v3, p0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService$3;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 185
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->addPendingCall(Lretrofit2/Call;)I

    move-result v3

    return v3
.end method

.method cancelAllRequests()V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 117
    .local v1, "key":I
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->cancelRequest(I)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "key":I
    :cond_0
    return-void
.end method

.method cancelRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Call;

    .line 123
    .local v0, "call":Lretrofit2/Call;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lretrofit2/Call;->isExecuted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mPendingCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 129
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->registerListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 88
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->unregisterListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mInternetAvailable:Z

    .line 93
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->cancelAllRequests()V

    .line 94
    return-void
.end method

.method public syncPersonalDataIfNeeded()V
    .locals 4

    .prologue
    .line 408
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    .line 409
    .local v0, "authenticationManager":Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getPersonalDataSynchronized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->uploadPersonalData()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->dateFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getPersonalDataLastSync()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->dateFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->retrievePersonalData()V

    goto :goto_0
.end method

.method public uploadUserProfile()V
    .locals 2

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->mInternetAvailable:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/authentication/client/ApcService$10;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/authentication/client/ApcService$10;-><init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;)V

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->asyncEditUserProfile(Lcom/parrot/freeflight/core/authentication/model/UserProfile;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I

    .line 401
    :cond_0
    return-void
.end method

.method public uploadUserProfileIfNeeded()V
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    .line 387
    .local v0, "authenticationManager":Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService;->authPrefs:Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->getUserProfileSynchronized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->uploadUserProfile()V

    .line 390
    :cond_0
    return-void
.end method
