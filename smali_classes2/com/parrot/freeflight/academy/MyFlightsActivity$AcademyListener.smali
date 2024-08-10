.class Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;
.super Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
.source "MyFlightsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/MyFlightsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcademyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener",
        "<",
        "Lcom/parrot/freeflight/academy/MyFlightsActivity;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_AVATAR_REQUEST:I = 0x0

.field public static final TYPE_MY_FLIGHTS_REQUEST:I = 0x2

.field public static final TYPE_PILOT_REQUEST:I = 0x1


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;I)V
    .locals 0
    .param p1, "activity"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;-><init>(Ljava/lang/Object;)V

    .line 317
    iput p2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;->mType:I

    .line 318
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
    .line 342
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .line 343
    .local v0, "activity":Lcom/parrot/freeflight/academy/MyFlightsActivity;
    if-eqz v0, :cond_0

    .line 344
    iget v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 346
    :pswitch_0
    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$1000(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    goto :goto_0

    .line 344
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
    .line 322
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .line 323
    .local v0, "activity":Lcom/parrot/freeflight/academy/MyFlightsActivity;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 324
    iget v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 338
    .end local p1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 326
    .restart local p1    # "result":Ljava/lang/Object;
    :pswitch_0
    check-cast p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$700(Lcom/parrot/freeflight/academy/MyFlightsActivity;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    goto :goto_0

    .line 329
    .restart local p1    # "result":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$800(Lcom/parrot/freeflight/academy/MyFlightsActivity;Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V

    goto :goto_0

    .line 332
    .restart local p1    # "result":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$900(Lcom/parrot/freeflight/academy/MyFlightsActivity;Ljava/util/List;)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
