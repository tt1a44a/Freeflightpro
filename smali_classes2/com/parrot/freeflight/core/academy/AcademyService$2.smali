.class Lcom/parrot/freeflight/core/academy/AcademyService$2;
.super Ljava/lang/Object;
.source "AcademyService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthGetProfile(Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

.field final synthetic val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyService;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$2;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "t"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$2;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$2;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;->onAuthGetProfileResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 180
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$2;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$2;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;

    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    invoke-interface {v1, v2, v0}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;->onAuthGetProfileResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$2;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 172
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$2;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;->onAuthGetProfileResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V

    goto :goto_0
.end method
