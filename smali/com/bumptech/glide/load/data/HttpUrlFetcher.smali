.class public Lcom/bumptech/glide/load/data/HttpUrlFetcher;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;,
        Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final INVALID_STATUS_CODE:I = -0x1

.field private static final MAXIMUM_REDIRECTS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HttpUrlFetcher"


# instance fields
.field private final connectionFactory:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

.field private final glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

.field private volatile isCancelled:Z

.field private stream:Ljava/io/InputStream;

.field private final timeout:I

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/GlideUrl;I)V
    .locals 1
    .param p1, "glideUrl"    # Lcom/bumptech/glide/load/model/GlideUrl;
    .param p2, "timeout"    # I

    .prologue
    .line 44
    sget-object v0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;-><init>(Lcom/bumptech/glide/load/model/GlideUrl;ILcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/model/GlideUrl;ILcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;)V
    .locals 0
    .param p1, "glideUrl"    # Lcom/bumptech/glide/load/model/GlideUrl;
    .param p2, "timeout"    # I
    .param p3, "connectionFactory"    # Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 50
    iput p2, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->timeout:I

    .line 51
    iput-object p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->connectionFactory:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

    .line 52
    return-void
.end method

.method private getStreamForSuccessfulRequest(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 144
    .local v0, "contentLength":I
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/util/ContentLengthInputStream;->obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    .line 151
    .end local v0    # "contentLength":I
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    return-object v1

    .line 146
    :cond_0
    const-string v1, "HttpUrlFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "HttpUrlFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got non empty content encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private static isHttpOk(I)Z
    .locals 2
    .param p0, "statusCode"    # I

    .prologue
    .line 132
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHttpRedirect(I)Z
    .locals 2
    .param p0, "statusCode"    # I

    .prologue
    .line 137
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDataWithRedirects(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "redirects"    # I
    .param p3, "lastUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 75
    const/4 v4, 0x5

    if-lt p2, v4, :cond_0

    .line 76
    new-instance v4, Lcom/bumptech/glide/load/HttpException;

    const-string v5, "Too many (> 5) redirects!"

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    new-instance v4, Lcom/bumptech/glide/load/HttpException;

    const-string v5, "In re-direct loop"

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v4

    .line 90
    :cond_1
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->connectionFactory:Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;

    invoke-interface {v4, p1}, Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;->build(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 91
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    .local v0, "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    iget v5, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->timeout:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 95
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    iget v5, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->timeout:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 96
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 97
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 101
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 104
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 106
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    .line 107
    iget-boolean v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->isCancelled:Z

    if-eqz v4, :cond_3

    .line 108
    const/4 v4, 0x0

    .line 122
    :goto_1
    return-object v4

    .line 110
    :cond_3
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 111
    .local v3, "statusCode":I
    invoke-static {v3}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->isHttpOk(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 112
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->getStreamForSuccessfulRequest(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_1

    .line 113
    :cond_4
    invoke-static {v3}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->isHttpRedirect(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    const-string v5, "Location"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "redirectUrlString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    new-instance v4, Lcom/bumptech/glide/load/HttpException;

    const-string v5, "Received empty or null redirect url"

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 121
    .local v1, "redirectUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->cleanup()V

    .line 122
    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, v1, v4, p1, p4}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->loadDataWithRedirects(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_1

    .line 123
    .end local v1    # "redirectUrl":Ljava/net/URL;
    .end local v2    # "redirectUrlString":Ljava/lang/String;
    :cond_6
    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 124
    new-instance v4, Lcom/bumptech/glide/load/HttpException;

    invoke-direct {v4, v3}, Lcom/bumptech/glide/load/HttpException;-><init>(I)V

    throw v4

    .line 126
    :cond_7
    new-instance v4, Lcom/bumptech/glide/load/HttpException;

    iget-object v5, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->isCancelled:Z

    .line 174
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->urlConnection:Ljava/net/HttpURLConnection;

    .line 167
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 10
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;, "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<-Ljava/io/InputStream;>;"
    const/4 v8, 0x2

    .line 57
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 59
    .local v2, "startTime":J
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/model/GlideUrl;->toURL()Ljava/net/URL;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v7}, Lcom/bumptech/glide/load/model/GlideUrl;->getHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->loadDataWithRedirects(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v1

    .line 60
    .local v1, "result":Ljava/io/InputStream;
    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const-string v4, "HttpUrlFetcher"

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string v4, "HttpUrlFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished http url fetcher fetch in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v1    # "result":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "HttpUrlFetcher"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    const-string v4, "HttpUrlFetcher"

    const-string v5, "Failed to load data for url"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_1
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    const-string v4, "HttpUrlFetcher"

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string v4, "HttpUrlFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished http url fetcher fetch in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    const-string v5, "HttpUrlFetcher"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    const-string v5, "HttpUrlFetcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished http url fetcher fetch in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v4
.end method
