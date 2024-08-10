.class Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;
.super Ljava/lang/Object;
.source "GLMapLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/GLMapLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field priority:I

.field final synthetic this$0:Lcom/parrot/freeflight/map/GLMapLayout;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/GLMapLayout;Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/map/GLMapLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;, "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority<TT;>;"
    .local p2, "listener":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;->this$0:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;->listener:Ljava/lang/Object;

    .line 220
    iput p3, p0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;->priority:I

    .line 221
    return-void
.end method
