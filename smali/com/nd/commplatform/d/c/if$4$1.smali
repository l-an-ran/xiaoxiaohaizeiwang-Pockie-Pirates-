.class final Lcom/nd/commplatform/d/c/if$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/if$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/if$4;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/if$4;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/if$4$1;->a:Lcom/nd/commplatform/d/c/if$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$4$1;->a:Lcom/nd/commplatform/d/c/if$4;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/if$4;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/if$4$1;->a:Lcom/nd/commplatform/d/c/if$4;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/if$4;->b:Landroid/content/Context;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->nJ:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$4$1;->a:Lcom/nd/commplatform/d/c/if$4;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/if$4;->c:Lcom/nd/commplatform/d/c/if;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/if;->g(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
