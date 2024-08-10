.class public Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;
.super Ljava/lang/Object;
.source "GamePadInputState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ButtonsState"
.end annotation


# instance fields
.field private final buttons:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->buttons:Landroid/util/SparseArray;

    .line 618
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->buttons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 639
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 621
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->buttons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    .line 622
    .local v0, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    if-nez v0, :cond_0

    .line 623
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->buttons:Landroid/util/SparseArray;

    new-instance v2, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    :cond_0
    return-void
.end method

.method public get(I)Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    .locals 2
    .param p1, "keyCode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 629
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->buttons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    .line 630
    .local v0, "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    if-nez v0, :cond_0

    .line 631
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;

    .end local v0    # "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    invoke-direct {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;-><init>(I)V

    .line 632
    .restart local v0    # "button":Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Button;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$ButtonsState;->buttons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 634
    :cond_0
    return-object v0
.end method
