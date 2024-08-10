.class Lcom/parrot/freeflight/map/GLMapLayout$4;
.super Ljava/lang/Object;
.source "GLMapLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/GLMapLayout;->sortEvents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/GLMapLayout;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/GLMapLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/GLMapLayout;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLMapLayout$4;->this$0:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;)I
    .locals 2
    .param p1, "o1"    # Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;
    .param p2, "o2"    # Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    .prologue
    .line 228
    iget v0, p1, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;->priority:I

    iget v1, p2, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 225
    check-cast p1, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    check-cast p2, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/map/GLMapLayout$4;->compare(Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;)I

    move-result v0

    return v0
.end method
