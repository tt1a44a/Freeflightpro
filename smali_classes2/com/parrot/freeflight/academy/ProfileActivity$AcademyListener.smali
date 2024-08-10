.class Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener",
        "<",
        "Lcom/parrot/freeflight/academy/ProfileActivity;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final TYPE_AVATAR_REQUEST:I = 0x0

.field static final TYPE_AVATAR_UPDATE:I = 0x1

.field static final TYPE_PILOT_REQUEST:I = 0x2


# instance fields
.field private final mType:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileActivity;I)V
    .locals 0
    .param p1, "activity"    # Lcom/parrot/freeflight/academy/ProfileActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 395
    iput p2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mType:I

    .line 396
    return-void
.end method


# virtual methods
.method public onError(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V
    .locals 2
    .param p1, "error"    # Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extra"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 420
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileActivity;

    .line 421
    .local v0, "activity":Lcom/parrot/freeflight/academy/ProfileActivity;
    if-eqz v0, :cond_0

    .line 422
    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 424
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$900(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 400
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileActivity;

    .line 401
    .local v0, "activity":Lcom/parrot/freeflight/academy/ProfileActivity;
    if-eqz v0, :cond_0

    .line 402
    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 404
    :pswitch_0
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$800(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V

    goto :goto_0

    .line 407
    :pswitch_1
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$900(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :pswitch_2
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$1000(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
