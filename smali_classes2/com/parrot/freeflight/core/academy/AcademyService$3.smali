.class Lcom/parrot/freeflight/core/academy/AcademyService$3;
.super Ljava/lang/Object;
.source "AcademyService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthSetProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;)I
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

.field final synthetic val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyService;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$3;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
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
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$3;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$3;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;->onAuthSetProfileResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 220
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Void;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$3;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$3;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;->onAuthSetProfileResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;)V

    .line 211
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 212
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$3;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthSetProfileListener;->onAuthSetProfileResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;)V

    goto :goto_0
.end method
