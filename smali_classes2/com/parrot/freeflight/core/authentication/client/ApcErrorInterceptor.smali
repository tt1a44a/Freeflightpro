.class public Lcom/parrot/freeflight/core/authentication/client/ApcErrorInterceptor;
.super Ljava/lang/Object;
.source "ApcErrorInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    .line 18
    .local v0, "authenticationManager":Lcom/parrot/freeflight/core/authentication/AuthenticationManager;
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 19
    .local v1, "request":Lokhttp3/Request;
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 20
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->disconnect()V

    .line 23
    :cond_0
    return-object v2
.end method
