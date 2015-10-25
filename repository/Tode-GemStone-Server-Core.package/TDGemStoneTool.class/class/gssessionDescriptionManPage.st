gs
gssessionDescriptionManPage
  | manPage |
  manPage := TDManPage
    commandName: 'sessionDescription'
    sourceMethod: self name asString , '>>gssessionDescription'
    fromString:
      'NAME
  gs sessionDescription - Session information report

SYNOPSIS
  gs sessionDescription [--all]|[<session-id>]

DESCRIPTION
  Return a dictionary with a variety of information about the given <session-id>. 

  By default, returns the session description for the current session. 

  With the --all option, a dictionary of session description dictionaries is returned, keyed
  by session id.

  Here''s a summary of the information in each session description dictionary:

   1.  The UserProfile of the session; nil if the UserProfile is recently
       created and not visible from this session''s transactional view 
       or the session is in login or processing, or has logged out.
   2.  A SmallInteger, the process ID of the Gem or topaz -l process .
   3.  The hostname of the machine running the Gem process. Specifically,
       the peer''s hostname as seen by stone, for the gem to stone network 
       connection used for login.
       (a String, limited to 127 bytes).
   4.  Primitive number in which the Gem is executing, or 0 if it is not executing
       in a long primitive.
   5.  Time of the session''s most recent beginTransaction, commitTransaction, or
       abortTransaction (from System timeGmt).
   6.  The session state (a SmallInteger).
   7.  A SmallInteger whose value is -1 if the session is in transactionless mode,
       0 if it is not in a transaction and 1 if it is in a transaction.
   8.  A Boolean whose value is true if the session is currently referencing the
       oldest commit record, and false if it is not.
   9.  The session''s serial number (a SmallInteger).
   10. The session''s sessionId (a SmallInteger).
   11. A String containing the ip address of host running the GCI process.
       If the GCI application is remote,  the peer address as seen by
       the gem of the GCI app to gem network connection.
       If the GCI application is linked (using libgcilnk*.so or gcilnk*.dll) 
       this is the peer''s ip address as seen by stone, for the gem to 
       stone network connection used for login.
   12. The priority of the session (a SmallInteger).
   13. Unique host ID of the host where the session is running (an Integer)
   14. Time of the session''s most recent request to stone (from System timeGmt)
   15. Time the session logged in (from System timeGmt)
   16. Number of commits which have occurred since the session obtained its view.
   17. Nil or a String describing a system or gc gem .
   18. Number of temporary (uncommitted) object IDs allocated to the session.
   19. Number of temporary (non-persistent) page IDs allocated to the session.
   20. A SmallInteger, 0 session has not voted, 1 session voting in progress,
       2 session has voted, or voting not active.
   21. A SmallInteger, processId of the remote GCI client process, 
       or -1 if the session has no remote GCI client .

EXAMPLES
  gs sessionDescription
  gs sessionDescription 5
  gs sessionDescription --all
'.
  ^ manPage